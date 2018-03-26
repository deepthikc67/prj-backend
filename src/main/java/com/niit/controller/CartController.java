
package com.niit.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.CartDAO;
import com.niit.DAO.CategoryDAO;
import com.niit.DAO.OrderDAO;
import com.niit.DAO.ProductDAO;
import com.niit.DAO.UserDAO;
import com.niit.Model.Cart;
import com.niit.Model.Order;
import com.niit.Model.User;


@Controller
public class CartController {
	
	
	int a;
	@Autowired
	ProductDAO productDAO;

	@Autowired
	UserDAO userDAO;

	@Autowired
	CartDAO cartDAO;

	@Autowired
	OrderDAO orderDAO;

	@Autowired
	CategoryDAO cdao;
	
	
	
	@RequestMapping(value="/addToCart",method=RequestMethod.POST)
	public ModelAndView addToCart(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		Principal principal = request.getUserPrincipal();
if( principal==null) {
	mav.setViewName("login");
	mav.addObject("msg", "Please login  first...");
	
	return mav;
	
}else {
		try {
			String email= principal.getName();

			User user=userDAO.getUserByEmail(email);

//			Principal principal = request.getUserPrincipal();
//			String EmailID = principal.getName();
			int productID = Integer.parseInt(request.getParameter("pId"));
			a=productID;
			Double price = Double.parseDouble(request.getParameter("pPrice"));
			int quantity = Integer.parseInt(request.getParameter("quant"));
			String productName=request.getParameter("name");
			String imgName=request.getParameter("imgName");
			System.out.println("---------------------------"+productID+"================"+email);
			Cart cartExist=cartDAO.getCartByID(productID, user.getId());
			if(cartExist==null){
				Cart cm = new Cart();
				
				cm.setCartPrice(price);
                
				cm.setCartProductID(productID);
				cm.setCartQuantity(quantity);
				cm.setCartImage(imgName);
				cm.setCartProductName(productName);

				User u = userDAO.getUserByEmail(email);
				cm.setCartUserDetails(u);	
				cartDAO.insert(cm);
				
			}
			else
			{
               Cart cm = new Cart();
				cm.setCartID(cartExist.getCartID());
				cm.setCartPrice(price);

				cm.setCartProductID(productID);
				cm.setCartImage(imgName);
				cm.setCartProductName(productName);
				cm.setCartQuantity(cartExist.getCartQuantity()+quantity);
				User u = userDAO.getUserByEmail(email);
				cm.setCartUserDetails(u);
				cartDAO.update(cm);
			}
			
			//Product product = productDao.findbyId(pid);

			// mav.addObject("product", product);
           
			
			
			
		
			mav.addObject("cartInfo", cartDAO.findCartByID(user.getId()));

			//mav.addObject("product", product);
			mav.setViewName("cart");

			return mav;
		} catch (Exception ex) 
		{
			ex.printStackTrace();
			return mav;
		}}
	}

	@RequestMapping("/checkout")
	public ModelAndView checkout(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		Principal principal = request.getUserPrincipal();
		String email= principal.getName();
		User u = userDAO.getUserByEmail(email);
		List<Cart> cart = cartDAO.findCartByID(u.getId());

		mav.addObject("user", u);
		mav.addObject("cart", cart);

		mav.setViewName("checkout");
		return mav;

	}

	@RequestMapping(value = "/invoiceprocess", method = RequestMethod.POST)
	public ModelAndView orderSave(HttpServletRequest request) {

		ModelAndView mav = new ModelAndView("invoice");
		Order oo = new Order();
		Double d = Double.parseDouble(request.getParameter("total"));
		String payment = request.getParameter("payment");
		Principal principal = request.getUserPrincipal();
		String email = principal.getName();
		User user = userDAO.getUserByEmail(email);

		oo.setUser(user);
		oo.setTotal(d);
		oo.setPayment(payment);
		orderDAO.addOrder(oo);
		
		List<Cart> c=cartDAO.findCartByID(user.getId());
		
		
		for(Cart cc:c) {
			System.out.println("-----------------------------------"+cc.getCartProductName());
		}
		mav.addObject("cart", c);
	
		mav.addObject("user", user);
		
		cartDAO.deleteCartByID(user.getId());
		return mav;
	}

	@RequestMapping(value = "/ackAction")
	public ModelAndView invoiceaction(HttpServletRequest request) {
		return new ModelAndView("acknowledgement");
	}

	
	@RequestMapping(value="/deletePCart/{cardID}")
	public ModelAndView deleteProductFromCart(@PathVariable("cardID") int cartID,HttpServletRequest request){
		ModelAndView mav=new ModelAndView();
		Principal principal = request.getUserPrincipal();
		String email = principal.getName();
		User u=userDAO.getUserByEmail(email);
		cartDAO.delete(cartID);
		mav.addObject("cartInfo", cartDAO.findCartByID(u.getId()));

		
		//Product product = productDao.findbyId(a);


		//mav.addObject("product", product);
		mav.setViewName("cart");
		return mav;
	}
	
	@ModelAttribute
	public void addAttributes(Model model) {
	   model.addAttribute("catList", cdao.getCategories());
	} 
	
	
	@RequestMapping("checkout1")
	public String checkout(){
		
		return "redirect:/checkoutflow";
		
	}
	
}

	
