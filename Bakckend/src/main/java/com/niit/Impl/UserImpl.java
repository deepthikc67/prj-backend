package com.niit.Impl;

import java.util.List;
import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.DAO.UserDAO;
import com.niit.Model.User;

@Repository("userDAO")
public class UserImpl implements UserDAO {

	@Autowired
	SessionFactory sessionFactory;

	// addUser
	@Transactional
	public boolean addUser(User user) {
		try {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(user);
			session.getTransaction().commit();
			session.close();
			return true;
		} catch (Exception e) {
			System.out.println("Exception Arised:" + e);
			return false;
		}
	}

	// getUser()

	public User getUser(int userId) {
		Session session = sessionFactory.openSession();
		User user = (User) session.get(User.class, userId);
		session.close();
		return user;
	}

	// deleteUser()
	@Transactional
	public boolean deleteUser1(int userID) {
		try {

			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(userID);
			session.getTransaction().commit();
			session.close();
			return true;
		}
		catch (Exception e) {
			System.out.println("Exception Arised:" + e);
			return false;
		}

	}

	// updateUser()
	@Transactional
	public boolean updateUser(User user) {
		try {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(user);
			session.getTransaction().commit();
			session.close();
			return true;
		} catch (Exception e) {
			System.out.println("Exception Arised:" + e);
			return false;
		}

	}

	// listUsers()
	public List<User> getUsers() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from User");
		List<User> listUsers = (List<User>) query.list();
		return listUsers;
	}

	public boolean validateUser(String email, String password) {
		Session session=sessionFactory.openSession();
		boolean UserFound=false;
		String SQL_QUERY =" from User as o where o.EmailID=? and o.Password=?";
		Query query = session.createQuery(SQL_QUERY);
		query.setParameter(0,email);
		query.setParameter(1,password);
		List list = query.list();

		if ((list != null) && (list.size() > 0)) {
			UserFound= true;
		}

		session.close();
		return UserFound;
	}
	public User getUserByEmail(String emailID) {
		Session session=sessionFactory.openSession();
		User p=null;
		try{
			session.beginTransaction();
		 p=	(User) session.createQuery("from User where email=?").setParameter(0, emailID).uniqueResult();
		session.getTransaction().commit();
			
			
		}catch(HibernateException ex){
			ex.printStackTrace();
			session.getTransaction().rollback();
		}
		return p;
	}

	public boolean deleteUser(int userID) {
		// TODO Auto-generated method stub
		return false;
	}

	

	}

