package com.MeiTuan.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.MeiTuan.pojo.TRestaurant;
import com.MeiTuan.pojo.TRestaurantType;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.meituan.service.RestaurantService;

@Controller
@RequestMapping("/restaurant")
public class RestaurantController {
	
@Autowired
private RestaurantService restaurantService;

@RequestMapping(value="/showData",method = {RequestMethod.POST,RequestMethod.GET })
     public String showData(HttpServletRequest request){
    	 String pageNum = request.getParameter("pageNum");
         String pageSize =request.getParameter("pageSize");
         int num = 1;
         int size = 10;
         if (pageNum != null && !"".equals(pageNum)) {
             num = Integer.parseInt(pageNum);
         }   
         if (pageSize != null && !"".equals(pageSize)) {
             size = Integer.parseInt(pageSize);
         }
         PageHelper.startPage(num, size);
     	List<TRestaurant> restList = restaurantService.showAllRestaurant();
     	PageInfo<TRestaurant> pages = new PageInfo<TRestaurant>(restList);
     	request.setAttribute("pages", pages);
        List<TRestaurantType> typeList = restaurantService.findAllType();
        request.getSession().setAttribute("typeList", typeList);
     	return "restaurant/adminAllRestaurant";
     }
     /*
      * 根据Id号显示餐馆信息
      */
     @RequestMapping("/showById")
     @ResponseBody
      public TRestaurant showById(Integer rstrId,HttpServletRequest request){
    	 TRestaurant rstr = restaurantService.findById(rstrId);
  	     return rstr;
     }
     /*
      * 编辑修改店铺信息
      */
     @RequestMapping("/updateRstr")
     public String updateRstr(TRestaurant tRestaurant){
    	 restaurantService.updateById(tRestaurant);
    	 return "redirect:showData";
     }
     /*
      * 根据ID删除某家店铺的信息
      */
     @RequestMapping("/delete")
     public String deleteById(Integer rstrId){
    	 restaurantService.deleteById(rstrId);
    	 return "redirect:showData";
     }
     /*
      * 新增店铺
      */
     @RequestMapping("/insert")
     public String insert(TRestaurant tRestaurant,Model model){
       	 if(tRestaurant.getRstrName()==null){
    		 model.addAttribute("errorMsg", "店铺名不能为空");
    		 return "redirect:showData";
    	 }
    	 if(tRestaurant.getTelephone()==null){
    		 model.addAttribute("msg2", "电话号码不能为空");
    		 return "redirect:showData";
    	 }
    	 restaurantService.insertRstr(tRestaurant);
    	 return "redirect:showData";
     }
}
