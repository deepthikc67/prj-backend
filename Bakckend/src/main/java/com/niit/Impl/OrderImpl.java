package com.niit.Impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.DAO.OrderDAO;
import com.niit.Model.Order;
@Repository
public class OrderImpl implements OrderDAO {
	


		@Autowired
		SessionFactory sessionFactory;
		
		
		
		



		public OrderImpl(SessionFactory sessionFactory) {
			super();
			this.sessionFactory = sessionFactory;
		}







		public void addOrder(Order order) {
			
			Session session=sessionFactory.openSession();
			session.beginTransaction();
	         
			session.saveOrUpdate(order);
			session.getTransaction().commit();
		}

	}

