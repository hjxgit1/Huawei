package com.cssl.controller;

import com.alibaba.fastjson.JSON;
import com.cssl.entity.Cart;
import com.cssl.entity.Phone;
import com.cssl.entity.Result;
import com.cssl.service.IPhoneService;
import com.cssl.util.CookieUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CartController {

    @Autowired
    private HttpServletRequest request ;

    @Autowired
    private HttpServletResponse response;

    @Autowired
    private  HttpSession session ;

    @Autowired
    private IPhoneService ps;

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    public HttpServletResponse getResponse() {
        return response;
    }


    public void setResponse(HttpServletResponse response) {
        this.response = response;
    }


    @ResponseBody
    @RequestMapping("/aa")
    public String aa(){
        return "aaa";
    }
    /*
       把商品添加到cookie中
     */
     @RequestMapping("/addGoodsInCookie")
      public String addGoodsInCookie(Integer phoneId, Integer phoneGiftId,String phone_colorname,String phone_versionname){
         String userName=(String) session.getAttribute("userName");
         List<Cart> listCard=findCartList();   //获取cookie中的购物车
         if(listCard.size()==0){
             listCard=new ArrayList<Cart>();
         }
         if (null==userName){ //没有登录，购物车存到cookie
             listCard= addGoodsToCartList(phoneId, phoneGiftId,1,phone_colorname,phone_versionname, listCard);
             String cardjs=JSON.toJSONString(listCard);
             CookieUtil.setCookie(request,response,"cardList",cardjs,3600*24,"UTF-8");
         }else{ //登录了，购物车存到redis中
             listCard= addGoodsToCartList(phoneId, phoneGiftId,1,phone_colorname,phone_versionname, listCard);
             ps.saveCartToRedis(userName,listCard);
         }
         return "redirect:cart.html";
      }

      /*
      查找cookie中所有的信息
       */
    @RequestMapping("findCartList")
    @ResponseBody
      public  List<Cart> findCartList(){
        String userName=(String) session.getAttribute("userName");
        System.out.println("name:"+userName);
        String cartListString =CookieUtil.getCookieValue(request, "cardList", "UTF-8");
        if(cartListString==null || cartListString.equals("")){
            cartListString ="[]" ;
        }
        List<Cart> cartList_cookies=JSON.parseArray(cartListString,Cart.class);
        if(null==userName){  //没有登录
            return cartList_cookies;
        }else{   //登录了
            List<Cart> cartList_redis=ps.selectCartByRedis(userName);
            if(cartList_cookies.size()>0){
                //合并购物车
                List<Cart> cartList = margeCartList(cartList_cookies, cartList_redis);
                //合并后的购物车存在redis中
                ps.saveCartToRedis(userName,cartList);
                //清除cookie缓存
                CookieUtil.deleteCookie(request,response,"cardList");
                return cartList;
            }
            return  cartList_redis;
        }
      }



      /*
      查询cookie中有没有该商品
       */
      public Cart selectCookieByPhoneId(List<Cart> clist,Integer phoneId){
          for (Cart c:clist){
              if (phoneId==c.getPhoneId()||phoneId.equals(c.getPhoneId())) {
                  return c;
              }
          }
          return  null;
      }

      /*
         将商品添加进购物车
       */
      public List<Cart> addGoodsToCartList(Integer phoneId,Integer phoneGiftId,Integer number,String phone_colorname,String phone_versionname,List<Cart> listCard){
          Cart cc=selectCookieByPhoneId(listCard,phoneId);
          Cart cart=new Cart();
          if(cc==null||cc.equals(null)){
              Phone phone=ps.selectByPrimaryKey(phoneId);
              cart.setPhoneId(phoneId);
              cart.setPhoneGiftId(phoneGiftId);
              cart.setPhone(phone);
              cart.setPhone_colorname(phone_colorname);
              cart.setPhone_versionname(phone_versionname);
              cart.setNumber(number);
              cart.setTotalPrice(phone.getPhoneOriginalprice()*number);
              listCard.add(cart);
          }else{
              cc.setNumber(cc.getNumber()+1);
          }
          return  listCard;
      }

      /*
      合并购物车
       */
      public List<Cart> margeCartList(List<Cart> listCard,List<Cart> listCard2){
          for (Cart cart:listCard2){
              listCard= addGoodsToCartList(cart.getPhoneId(), cart.getPhoneGiftId(),cart.getNumber(),cart.getPhone_colorname(),cart.getPhone_versionname(), listCard);
          }
          return listCard;
      }

      /*
         加  减
       */
      @RequestMapping("shoppingJia")
      @ResponseBody
      public Result shoppingJia(Integer phoneId, Integer num){
          List<Cart> clist=findCartList();
          Cart cart=selectCookieByPhoneId(clist,phoneId);
          //保证库存
          Phone phone=ps.selectByPrimaryKey(phoneId);
          if(num>0){
              System.out.println(cart.getNumber());
              if(phone.getPhoneStock()<=cart.getNumber()){
                 return  new Result(false,"库存不足");
              }
          }else{
              if(cart.getNumber()<=1){
                  return  new Result(false,"减到最少了");
              }
          }
          cart.setNumber(cart.getNumber()+num);
          cart.setTotalPrice(cart.getPhone().getPhoneOriginalprice()*cart.getNumber());
          String cardjs=JSON.toJSONString(clist);
          String username=(String) session.getAttribute("userName");
          if(username==null) {
              CookieUtil.setCookie(request, response, "cardList", cardjs, 3600 * 24, "UTF-8");
          }else{
              ps.saveCartToRedis(username,clist);
          }
          return new Result(true,"成功");
      }

}
