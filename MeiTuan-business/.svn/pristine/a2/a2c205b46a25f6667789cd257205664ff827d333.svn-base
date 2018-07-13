package com.MeiTuan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.MeiTuan.pojo.TBusiness;
import com.MeiTuan.pojo.TFood;
import com.MeiTuan.pojo.TMenu;
import com.MeiTuan.service.FoodService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Controller
@RequestMapping("/food")
public class FoodController {
	
	@Autowired
	FoodService foodService;
	
	@Value("${xinpinshangshi}")
	private String xinpinshangshi;
	@Value("${vip}")
	private String vip;
	@Value("${lexiangshuangrencan}")
	private String lexiangshuangrencan;
	@Value("${guguocha}")
	private String guguocha;
	@Value("${guwanzi}")
	private String guwanzi;
	@Value("${gusihua}")
	private String gusihua;
	@Value("${gudanzai}")
	private String gudanzai;
	@Value("${guluzhounian}")
	private String guluzhounian;
	@Value("${chaoshan}")
	private String chaoshan;
	@Value("${guxuepa}")
	private String guxuepa;
	@Value("${meiweidapei}")
	private String meiweidapei;
	@Value("${tehuizhuanqu}")
	private String tehuizhuanqu;
	/*
	 * 跳转管理菜色页面
	 */
     @RequestMapping("/show")
     public String Adminfood(){
    	 return "food/adminAllFoods";
     }
     
     @RequestMapping(value="/showData",method = {RequestMethod.POST,RequestMethod.GET })
     public String showAllFood(HttpServletRequest request,Model model){
      	 HttpSession session = request.getSession();
 		 TBusiness tBusiness = (TBusiness) session.getAttribute("business");
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
     	List<TFood> food = foodService.showAllfood(tBusiness);
     	PageInfo<TFood> pages = new PageInfo<TFood>(food);
     	request.setAttribute("pages", pages);
     	HttpSession Typesession = request.getSession();
     	Typesession.setAttribute("xinpinshangshi",xinpinshangshi);
     	Typesession.setAttribute("vip", vip);
     	Typesession.setAttribute("lexiangshuangrencan",lexiangshuangrencan);
     	Typesession.setAttribute("guguocha",guguocha);
     	Typesession.setAttribute("guwanzi", guwanzi);
     	Typesession.setAttribute("gusihua", gusihua);
     	Typesession.setAttribute("gudanzai", gudanzai);
     	Typesession.setAttribute("guluzhounian", guluzhounian);
     	Typesession.setAttribute("chaoshan", chaoshan);  
     	Typesession.setAttribute("guxuepa", guxuepa); 
     	Typesession.setAttribute("meiweidapei", meiweidapei); 
     	Typesession.setAttribute("tehuizhuanqu", tehuizhuanqu); 
     	return "food/adminAllFoods";
     }
     /*
      * 根据ID删除食物
      */
     @RequestMapping("/delete")
     public String delete(Integer foodId){
    	 foodService.delFood(foodId);
    	 return "redirect:showData";
     }
     /*
      * 在下拉框显示所有的菜单
      */
     @RequestMapping("/showMenu")
     @ResponseBody
     public List<TMenu> showMenu(){
    	 List<TMenu> menuList = foodService.selectAllMenu();
         return menuList;
     }
     /*
      * 根据ID获取食物详情，显示在修改页面
      */
     @RequestMapping("/showById")
     @ResponseBody
     public TFood showById(Integer foodId){
    	  TFood tFood = foodService.selectById(foodId);
    	  return tFood;
     }
     /*
      * 修改食物选项
      */
     @RequestMapping("/updateFood")
     public String updateUser(TFood tFood){
  	      foodService.updateFood(tFood);
  	      return "redirect:showData";
     }
     /*
      * 跳转到添加页面
      */
     @RequestMapping("/add")
     public String add(){
    	  return "food/addFoods";
     }
     /*
      * 新增食物
      */
     @RequestMapping("/insert")
     public String insert(TFood tFood){
    	 foodService.addFood(tFood);
    	 return "redirect:showData";
     }
}
