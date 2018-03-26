

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

import com.niit.DAO.ProductDAO;
import com.niit.Model.Product;
/*@Controller
public class ProductController {
	@Autowired
ProductDAO productDAO;	
	

	   
	   @RequestMapping(value = "/product", method = RequestMethod.GET)
	   public String product(Model product) {
		   product.addAttribute("product", new Product());
		   
	      return "product";
	   }
		  @RequestMapping( value = "/saveProduct",method = RequestMethod.POST)
		   public ModelAndView product(@ModelAttribute Product cm){
		       ModelAndView ma=new ModelAndView();
		       productDAO.addProduct(cm);
		       ma.setViewName("redirect:/productlist");
		   return ma;

		   } 
		  @RequestMapping("/productlist")
			public ModelAndView productList() {
				ModelAndView ma = new ModelAndView();
				// User user = (User) session.getAttribute("user");
				 List<Product> plist=productDAO.getProducts();
				
				 
				 for (Product product : plist) {
					 System.out.println(product.getName()+"--------------------------------------------------------------------------");
					
				}
				 
				 ma.setViewName("productList");
				ma.addObject("productList",plist);
				return ma;
			}
		  
		  
		  
		  @RequestMapping("/deleteProduct/{ProductID}")
			public String delete(@PathVariable("ProductID") int ProductID) {
				// contactDAO.delete(contactId);
				productDAO.deleteProduct(ProductID);
				return "redirect:/productlist?del";
		  }
		  
		  
		  
		  @RequestMapping("/updateProduct/{ProductID}")
			public ModelAndView editView(@PathVariable("ProductID") int ProductID) {
				ModelAndView ma = new ModelAndView();

				Product p = productDAO.getProduct(ProductID);
				// ModelAndView mav = new ModelAndView("category");
				// mav.addObject("supplier", new Supplier());
				ma.addObject("uproduct", p);// Domain as Command
		
				ma.setViewName("updateproduct");
				return ma;
			}
		  
		  
		  
		  @RequestMapping(value = "/saveUProduct", method = RequestMethod.POST)
			public ModelAndView updateProduct(@ModelAttribute("uproduct") Product uproduct) {
				
				System.out.println(uproduct.getId()+"--------------"+uproduct.getName()+"------------"+uproduct.getDescription());
				
				System.out.println("called");
				ModelAndView ma = new ModelAndView();
				productDAO.updateProduct(uproduct);

				ma.setViewName("redirect:/productlist?update");
			
				return ma;

			}

		
		  

}*/


