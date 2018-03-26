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

import com.niit.DAO.SupplierDAO;
import com.niit.Model.Product;
import com.niit.Model.Supplier;



 /*@Controller
public class SupplierController {
	

	@Autowired
	SupplierDAO supplierDAO;	
	
	 @RequestMapping(value = "/supplier", method = RequestMethod.GET)
	   public String supplier(Model supplier) {
		  
			   supplier.addAttribute("supplier", new Supplier());
			   
		   
	      return "supplier";
	   }
		  @RequestMapping( value = "/saveSupplier",method = RequestMethod.POST)
		   public ModelAndView supplier(@ModelAttribute Supplier sup){
		       ModelAndView su=new ModelAndView();
		       supplierDAO.addSupplier(sup);
		       su.setViewName("redirect:/supplierlist");
		   return su;

		   } 
		  
		  @RequestMapping("/supplierlist")
			public ModelAndView supplierList() {
				ModelAndView su = new ModelAndView();
				// User user = (User) session.getAttribute("user");
				 List<Supplier> slist=supplierDAO.getSuppliers();
				 
				 for (Supplier supplier : slist) {
					 System.out.println(supplier.getSupplierName()+"--------------------------------------------------------------------------");
					
				}
				 
				 su.setViewName("supplierList");
				su.addObject("supplierList",slist);
				return su;
			}
		  
		  @RequestMapping("/deleteSupplier/{SupplierID}")
			public String deleteSupplier(@PathVariable("SupplierID") int SupplierID) {
				// contactDAO.delete(contactId);
				supplierDAO.deleteSupplier(SupplierID);
				return "redirect:/supplierlist?del";
		  }
		 
		  
		  
		  
		  @RequestMapping("/updateSupplier/{SupplierID}")
			public ModelAndView editView(@PathVariable("SupplierID") int SupplierID) {
				ModelAndView su = new ModelAndView();

				Supplier s = supplierDAO.getSupplier(SupplierID);
				// ModelAndView mav = new ModelAndView("category");
				// mav.addObject("supplier", new Supplier());
				su.addObject("usupplier", s);// Domain as Command
		
				su.setViewName("updatesupplier");
				return su;
			}
		  
		  
		  
		  @RequestMapping(value = "/saveUSupplier", method = RequestMethod.POST)
				public ModelAndView updateSupplier(@ModelAttribute("usupplier") Supplier usupplier) {
					
					System.out.println(usupplier.getSid()+"--------------"+usupplier.getSupplierName());
					System.out.println("called");
					ModelAndView su = new ModelAndView();
					supplierDAO.updateSupplier(usupplier);

					su.setViewName("redirect:/supplierlist?update");
				
					return su;

				}


}*/

