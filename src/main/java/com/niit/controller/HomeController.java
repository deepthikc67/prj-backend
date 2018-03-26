package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.UserDAO;
import com.niit.Model.User;

//@Controller
public class HomeController {
	/*
	@Autowired
	UserDAO userDAO;
	
	
	@RequestMapping(value ="/home",method=RequestMethod.GET)
	public String Hello() {
		
		
		return"home";
	}
	  
	   
	
	 @RequestMapping(value = "/register", method = RequestMethod.GET)
	   public String register(Model m) {
		   m.addAttribute("u", new User());
		   
	      return "register";

	}
	   
	   
	  @RequestMapping( value = "/saveRegister",method = RequestMethod.POST)
	   public ModelAndView register(@ModelAttribute User cmd, BindingResult bindingResult){
	       ModelAndView mav=new ModelAndView();
	       userDAO.addUser(cmd);
	       mav.setViewName("home");
	   return mav;

	   } 
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model m) {
		   m.addAttribute("u", new User());
		
		return"login";
	}

	   @RequestMapping(value = "/about", method = RequestMethod.GET)
	   public String about() {
	      return "about";

	}
	  
		   }*/}