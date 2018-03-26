
package com.niit.Impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.DAO.CartDAO;
import com.niit.Model.Cart;


@Repository(value="cartDAO")

public class CartImpl implements CartDAO {
	
	
	
		@Autowired
		SessionFactory sessionFactory;
		
	
		
		
		public CartImpl(SessionFactory sessionFactory) {
			this.sessionFactory = sessionFactory;
		}

		
		

		public void insert(Cart cart) {

			Session session=sessionFactory.openSession();
			session.beginTransaction();
	        // product.setImgcount(imgcount);
			session.persist(cart);
			
			session.getTransaction().commit();
			//session.getTransaction().commit();
			//session.close();
			
			
		}
		
		
		public List<Cart> findCartByID(int EmailID){
			
			Session session=sessionFactory.openSession();
			List<Cart> p=null;
			try{
				session.beginTransaction();
			 /*p=	session.get(CartModel.class, userId);*/
			/*p=	(CartModel) session.createQuery("from CartModel where userMailId="+userId).uniqueResult();*/
			
			p=	(List<Cart>) session.createQuery(" from Cart  where UserID = :UserID")
		           .setInteger("UserID", EmailID).list();
				session.getTransaction().commit();
				
				
			}catch(HibernateException ex){
				ex.printStackTrace();
				session.getTransaction().rollback();
			}
			return  p;
		
			
			
			
		}




		public void delete(int cartID) {
			Session session=sessionFactory.openSession();
			session.beginTransaction();

			Cart cart=(Cart)session.get(Cart.class,cartID);
			session.delete(cart);
			session.getTransaction().commit();
			
		}




		public void update(Cart cart) {
			Session session=sessionFactory.openSession();
			
			
			session.beginTransaction();


			session.update(cart);
			session.getTransaction().commit();
		
		
		}




		public Cart getCartByID(int ProductID, int EmailID) {
			Session session=sessionFactory.openSession();
			session.beginTransaction();
			Cart cm=(Cart)session.createQuery(" from Cart  where UserId = :UserId and cartproductid=:cartproductid")
					.setInteger("UserId", EmailID).setInteger("cartproductid", ProductID).uniqueResult();
			session.getTransaction().commit();
			return cm;
		}




		public void deleteCartByID(int userID) {
			
			
			Session session=sessionFactory.openSession();

			session.beginTransaction();
			
			Query query = session.createQuery("delete Cart where userID = :userID");
			query.setParameter("userID", userID);
			int result = query.executeUpdate();
			session.getTransaction().commit();

		}




		
		
		
		
		
	 
		  
	}

