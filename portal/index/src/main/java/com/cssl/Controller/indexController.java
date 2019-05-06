package com.cssl.Controller;

import com.alibaba.fastjson.JSON;
import com.cssl.entity.Carousel;
import com.cssl.entity.Category;
import com.cssl.entity.Phone;
import com.cssl.service.ICarouselService;
import com.cssl.service.ICategoryService;
import com.cssl.service.IImageService;
import com.cssl.service.IPhoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
public class indexController {

    @Autowired
    private ICarouselService cs;

    @Autowired
    private ICategoryService category;

    @Autowired
    private IPhoneService phone;

    @Autowired
    private IImageService image;

    @RequestMapping(value = "/slideShow")
    @ResponseBody
    public String  slideShow(){
        List<Carousel> list = cs.selectCarousel();
        String josn = JSON.toJSONString(list);
        System.out.println("轮播图 json = "+list);
        return josn;
    }

    @RequestMapping(value = "/parentLevel")
    public String  parentLevel(Map map){
        /* PC轮播图 */
        List<Carousel> listCarousel = cs.selectCarousel();
        /* 父子查询 */
        List<Category> listCategory = category.selectCategory();

        List<Phone> phoneList = null;

        for (int i = 0 ; i < listCategory.size() ; i++) {
            /* 菜单下的二级菜单 */
            listCategory.get(i).setCategoryList(category.selectSubmenu(listCategory.get(i).getHpcId()));

            /* 菜单下的商品 */

            listCategory.get(i).setPhonesList(phone.selectPhone(listCategory.get(i).getHpcId()));

            for (int h = 0 ; h < listCategory.get(i).getPhonesList().size() ; h++ ){
                listCategory.get(i).getPhonesList().get(h).setImageList(image.selectImage(listCategory.get(i).getPhonesList().get(h).getPhoneId()));
            }

        }



        map.put("listCarousel",listCarousel);
        System.out.println("轮播图 json = "+listCarousel);
        map.put("listCategory",listCategory);
        System.out.println("父子联查 json = "+listCategory);
        return "honor";
    }

}