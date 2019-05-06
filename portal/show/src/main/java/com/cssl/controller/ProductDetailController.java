package com.cssl.controller;

import com.alibaba.fastjson.JSON;
import com.cssl.entity.*;
import com.cssl.service.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
/*import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;*/
import java.util.*;

/*商品有关*/
@Controller
public class ProductDetailController {

    @Autowired
    private IProductDetailService pdservice; //商品

    @Autowired
    private IImageService imgservice; //图片

    @Autowired
    private IColorService colorService;//颜色

    @Autowired
    private IPversionService pversionService;//商品版本关系

    @Autowired
    private IVersionService versionService;//版本

    @Autowired
    private IGiftService giftService;//赠品

    @Autowired
    private IUserService userService;//用户

    @Autowired
    private ICommentService commentService;//评论

    @Autowired
    private IConsultService consultService;//咨询

    //根据id查询这个商品的详情信息
    @RequestMapping(value="/phone",produces={"application/json; charset=UTF-8"})
    @ResponseBody
    public Object phone(Integer phoneId) throws Exception{
        //取数据
        Phone phone=pdservice.selectByPrimaryKey(phoneId);
        //转json
        String js = JSON.toJSONString(phone);
        return js;
    }

    //根据商品id查询这个商品的图片信息
    @RequestMapping(value="/image",produces={"application/json; charset=UTF-8"})
    @ResponseBody
    public Object image(Integer phoneId) throws Exception{
        //取数据
        List<Image> image=imgservice.selectImgByPhoneId(phoneId);
        //转json
        String js = JSON.toJSONString(image);
        return js;
    }

    //根据商品id查询这个商品的颜色
    @RequestMapping(value="/phoneColor",produces={"application/json; charset=UTF-8"})
    @ResponseBody
    public Object phoneColor(Integer phoneId) throws Exception{
        //取数据
        List<Image> imagecolor=imgservice.selectcolorByPhoneId(phoneId);
        for (int i = 0 ; i < imagecolor.size() ; i ++ ){
            imagecolor.get(i).setColorList(colorService.selectByPrimaryKey(imagecolor.get(i).getPhoneColorid()));
        }
        //转json
        String js = JSON.toJSONString(imagecolor);

        return js;
    }

    //查询商品版本
    @RequestMapping(value="/version",produces={"application/json; charset=UTF-8"})
    @ResponseBody
    public Object version(Integer phoneId) throws Exception{
        //取数据
        List<Pversion> version=pversionService.selectVersionByPhoneId(phoneId);
        for (int i=0;i<version.size();i++){
            version.get(i).setPhoneList(pdservice.selectByVersionPhone(version.get(i).getPhoneId()));//商品
            version.get(i).setVersionList(versionService.selectByVersion(version.get(i).getPhoneVersionid()));//版本
        }
        //转json
        String js = JSON.toJSONString(version);

        return js;
    }

    //赠品
    @RequestMapping(value="/gift",produces={"application/json; charset=UTF-8"})
    @ResponseBody
    public Object gift(Integer phoneId) throws Exception{
        //取数据
        List<Gift> gift=giftService.selectByPrimaryKey(phoneId);
        for (int i = 0 ; i < gift.size() ; i ++ ){
            gift.get(i).setPhoneList(pdservice.selectByPhoneGift(gift.get(i).getPhoneGiftId()));
        }
        //转json
        String js = JSON.toJSONString(gift);

        return js;
    }

    //商品评论
    @RequestMapping(value = "/comment",produces = {"application/json; charset=UTF-8"})
    @ResponseBody
    public Object comment(Integer phoneId)throws Exception{
        List<Comment> comments=commentService.selectAllByPhoneid(phoneId);

        for (int i=0;i<comments.size();i++){
            comments.get(i).setUserList(userService.selectCommentNameByName(comments.get(i).getComNickName()));
        }

        String js=JSON.toJSONString(comments);
        return js;
    };

    //商品咨询、分页
    @RequestMapping(value = "/consult",produces = {"application/json; charset=UTF-8"})
    @ResponseBody
    public Object consult(Integer phoneId,@RequestParam(value = "pageNo",required = false) Integer pageNo)throws Exception{
        if(pageNo==null||pageNo.equals("")){//第一次进入页面
            pageNo=1;
        }
        int pageSize=2;
        Integer count=consultService.selectCountByid(phoneId);//总数
        Integer totoalPage=count%pageSize==0?count/pageSize:count/pageSize+1;

        //初始化page
        Page page=new Page();
        page.setPageNo(pageNo);
        page.setPageSize(pageSize);
        page.setTotalCount(count);
        page.setTotalPage(totoalPage);

        int pageIndex=(pageNo-1)*pageSize;//求当前页面


        List<Consult> consultList=consultService.selectAllByPhoneid(phoneId,pageIndex,pageSize);

        PageService ps=new PageService();
        ps.setPage(page);
        ps.setPageAllConsultList(consultList);


        String js=JSON.toJSONString(ps);
        System.out.println("consult js="+js);
        return js;
    };

    //新增咨询（用户）
    @RequestMapping("/insertConsultAboutUser")
    public String insertConsultAboutUser(Consult consult){

        int num=consultService.insertConsultAboutUser(consult);
        System.out.print("insert num="+num);
        return "redirect:Detailtest.html";
    }

}
