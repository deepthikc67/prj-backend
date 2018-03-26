package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.CategoryDAO;
import com.niit.Model.Category;

/*
@Controller
public class CategoryController  {

	@Autowired
	CategoryDAO cdao;

	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String category(Model category) {

		category.addAttribute("category", new Category());

		return "category";
	}

	@RequestMapping(value = "/saveCategory", method = RequestMethod.POST)
	public ModelAndView category(@ModelAttribute Category cate) {
		ModelAndView cat = new ModelAndView();
		cdao.addCategory(cate);
		
		cat.setViewName("redirect:/categorylist");
		return cat;

	}

	@RequestMapping("/categorylist")
	public ModelAndView contactList() {
		ModelAndView cat = new ModelAndView();

		List<Category> clist = cdao.getCategories();

		for (Category category : clist) {
			 System.out.println(category.getName()+"--------------------------------------------------------------------------");

		}

		cat.setViewName("categoryList");
		cat.addObject("categoryList", clist);
		return cat;
	}

	@RequestMapping("/deleteCategory/{categoryId}")
	public String deleteCategory(@PathVariable("categoryId") int categoryId) {
		// contactDAO.delete(contactId);
		cdao.deleteCategory(categoryId);
		return "redirect:/categorylist?del";
	}

	@RequestMapping("/updateCategory/{categoryId}")
	public ModelAndView editView(@PathVariable int categoryId) {
		ModelAndView mav = new ModelAndView();

		Category cat1 = cdao.getCategory(categoryId);

		//cat.addObject("categorylist", categoryDAO.getCategories());

		mav.addObject("ucat", cat1);
		mav.setViewName("updatecategory");
		return mav;
	}

	@RequestMapping(value = "/updateSCategory", method = RequestMethod.POST)
	public ModelAndView updateCategory(@ModelAttribute("ucat") Category ucat) {
		
		System.out.println(ucat.getCid()+"--------------"+ucat.getName());
		
		System.out.println("called");
		ModelAndView mav = new ModelAndView();
		cdao.updateCategory(ucat);

		mav.setViewName("redirect:/categorylist?update");
	
		return mav;

	}
}
*/