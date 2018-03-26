package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.CategoryDAO;
import com.niit.DAO.ProductDAO;
import com.niit.DAO.UserDAO;
import com.niit.Model.Category;
import com.niit.Model.Product;
import com.niit.Model.User;


@Controller

public class UserController {
	@Autowired
	UserDAO userDAO;
	
	
	@Autowired
	CategoryDAO cdao;
	
	

	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/error")
	public  String errorPage(){
		return "error";
		
	}
	
	
	

	@RequestMapping("/test")
	public  String test(){
		return "productclist";
		
	}
	

	@RequestMapping(value="/productCustList") 
	public ModelAndView displayCustProducts(@RequestParam("cid") int cid)
	{ 
		System.out.println(cid); 
	ModelAndView mv=new ModelAndView("productclist"); 
	//mv.getModelMap().addAttribute("custProducts",productDAO.getProductsByCategory(cid));
	
	mv.addObject("custProducts",productDAO.getProductsByCategory(cid));
	return mv; 
	}
	
	
	
	
	
	
	
	
	
	@RequestMapping("/userLogged")
	public  String userLogged(){
		return "redirect:/home";
		
	}
	
	
	@ModelAttribute
	public void addAttributes(Model model) {
		
		List<Category> clist= cdao.getCategories();
		
		
		
		for(Category c:clist) {
			System.out.println("ccccccccccccccccccccccccccccccc----------------------------"+c.getName());
		}
	   model.addAttribute("catList",clist);
	} 
	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		return mav;

	}
	  @RequestMapping(value="/productDescription/{id}")
			public ModelAndView productDescription1(@PathVariable("id") int id)
			
			{
				
				ModelAndView mav=new ModelAndView();
				
				Product p=(Product) productDAO.getProduct(id);
				
				mav.addObject("product", p);
				
				mav.setViewName("productDescription");
				return mav;
						
				
				
			}
		  
	
	/*
	  @RequestMapping(value = "/login", method = RequestMethod.GET)
	  public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("login");
	    mav.addObject("login", new User());
	    return mav;
	  }
	  */
	 /* @RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	  public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
	  @ModelAttribute("login") User login) {
	    ModelAndView mav = null;
	    Boolean user = userDAO.validateUser(login.getEmailID(), login.getPassword());
	    if (user==true) {
	    mav = new ModelAndView("home");
	    HttpSession hs=request.getSession();
	    hs.setAttribute("user", login.getEmailID());
	    } else {
	    mav = new ModelAndView("login");
	    mav.addObject("message", "Username or Password is wrong!!");
	    }
	    return mav;
	 
	  }*/
	   
	/*   
	  @RequestMapping(value = "/logout", method = RequestMethod.GET)
	   public String logout(HttpServletRequest request) {
		 HttpSession hs=request.getSession();
		 hs.removeAttribute("user");
		 hs.invalidate();
		 
	      return "home";
	   }*/
	    
	  
	  
	 
	   @RequestMapping(value = {"/home","/"}, method = RequestMethod.GET)
	   public String printHello2() {
	      return "home";
	   }
	    
	   
	   @RequestMapping(value = "/register", method = RequestMethod.GET)
	   public String register(Model m) {
		   m.addAttribute("u", new User());
		   
	      return "register";

	}
	   
	   
	  @RequestMapping( value = "/saveRegister",method = RequestMethod.POST)
	   public ModelAndView register(@ModelAttribute User u){
	       ModelAndView mav=new ModelAndView();
	       u.setRole("ROLE_USER");
	       userDAO.addUser(u);
	       mav.setViewName("home");
	   return mav;

	   } 
	       
	  
	  
	/* @RequestMapping(value="/productDescription/{ProductID}")
		public ModelAndView productDescription(@PathVariable("ProductID") int ProductID)
		
		{
			
			ModelAndView mav=new ModelAndView();
			
			Product p=(Product) productDAO.getProduct(ProductID);
			
			mav.addObject("product", p);
			
			mav.setViewName("productDescription");
			return mav;
					
			
			
		}*/
	  
	  
	  
	   
	   @RequestMapping(value = "/about", method = RequestMethod.GET)
	   public String about() {
	      return "about";

	}

}   
		/*  @RequestMapping(value="/cart/{ProductID}")
			public ModelAndView cart(@PathVariable("ProductID") int ProductID)
			
			{
				
				ModelAndView cart=new ModelAndView();
				
				Product product=(Product) productDAO.getProduct(ProductID);
				
				cart.addObject("product", product);
				
				cart.setViewName("cart");
				return cart;
			}
		 
	   @RequestMapping(value = "/cart", method = RequestMethod.GET)
	   public String cart() {t
	      return "cart";
	   }
	   
	   
	   
	   
	   @RequestMapping(value = "/bill", method = RequestMethod.GET)
	   public String bill() {
	      return "bill";
	   }
	   
	   @RequestMapping(value = "/payment", method = RequestMethod.GET)
	   public String payment() {
	      retun "payment";
	      	   
	  @RequestMapping(value = "/about", method = RequestMethod.GET)
	   public String about() {
	      return "about";

	}
}*/
