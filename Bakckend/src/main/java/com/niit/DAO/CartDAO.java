
package com.niit.DAO;

import java.util.List;

import com.niit.Model.Cart;

public interface CartDAO {
	
	
	
	

		
		void insert(Cart cart);
		public List<Cart> findCartByID(int userID);
		public void deleteCartByID(int userID);

		public void delete(int cart);
		public void update(Cart cart);
		public Cart getCartByID(int ProductID,int EmailID);
	

}