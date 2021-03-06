package com.niit.Model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="Product")
public class Product 

{
	
	
	@Id
	@GeneratedValue
	private int id;
	private String name;
	private String description;
	private  Float price;
	private int stock;
/*
	@Transient
	List<MultipartFile> detailimage;*/ 
	//private String cid;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="cid")
    private Category category;
	
	/*
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="id")
    private Cart cart;*/
	
	//private String sid;
	
	@ManyToOne
	@JoinColumn(name="sid")
	private Supplier supplier;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	
	
	private String imgName;	

	


	

	public String getName() {
		return name;
	}

	public String getImgName() {
		return imgName;
	}

	public void setImgName(String imgName) {
		this.imgName = imgName;
	}

	
	

	public String name() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public void setPrice(int price2) {
		// TODO Auto-generated method stub
		
	}
	
	
}