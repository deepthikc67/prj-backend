package com.niit.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Table;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
@Table
public class Cart {
	
	
		
	@Id
	@GeneratedValue
	
	private int cartID;


	private int cartProductID;
	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "UserID")
	private User cartUserDetails;
	@Column(name = "cartPrice")
	private Double cartPrice;
	@Column(name = "cartQuantity")
	private int cartQuantity;
	

	private String cartImage;
	private String cartProductName;
	
	public Cart() {

	}

	public Cart(int cartID, int cartProductID, User cartUserDetails,
	Double cartPrice, int cartQuantity) {
	this.cartID = cartID;
	this.cartProductID = cartProductID;
	this.cartUserDetails = cartUserDetails;
	this.cartPrice = cartPrice;
	this.cartQuantity = cartQuantity;
	
	
	
	}

	public int getCartID() {
		return cartID;
	}

	public void setCartID(int cartID) {
		this.cartID = cartID;
	}

	public int getCartProductID() {
		return cartProductID;
	}

	public void setCartProductID(int cartProductID) {
		this.cartProductID = cartProductID;
	}

	public User getCartUserDetails() {
		return cartUserDetails;
	}

	public void setCartUserDetails(User cartUserDetails) {
		this.cartUserDetails = cartUserDetails;
	}

	public Double getCartPrice() {
		return cartPrice;
	}

	public void setCartPrice(Double cartPrice) {
		this.cartPrice = cartPrice;
	}

	public int getCartQuantity() {
		return cartQuantity;
	}

	public void setCartQuantity(int cartQuantity) {
		this.cartQuantity = cartQuantity;
	}

	public String getCartImage() {
		return cartImage;
	}

	public void setCartImage(String cartImage) {
		this.cartImage = cartImage;
	}

	public String getCartProductName() {
		return cartProductName;
	}

	public void setCartProductName(String cartProductName) {
		this.cartProductName = cartProductName;
	}
	
	
	
	

}