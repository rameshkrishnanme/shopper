package com.blacksystems.spring.boot.microservices.shopper.domain;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;


/**
 * The persistent class for the product database table.
 * 
 */
@Entity
@Table(name="Product")
@NamedQuery(name="Product.findAll", query="SELECT p FROM Product p")
public class Product implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private int idProduct;
	
	private String discount;
	
	private String highestCategoryDiscount;
	
	private String productCategoryName;
	
	private String productImage;
	
	private String productName;
	
	private String productPrice;
	
	private float rating;

	public Product() {
	}

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getIdProduct() {
		return this.idProduct;
	}

	public void setIdProduct(int idProduct) {
		this.idProduct = idProduct;
	}


	public String getDiscount() {
		return this.discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
	}


	public String getHighestCategoryDiscount() {
		return this.highestCategoryDiscount;
	}

	public void setHighestCategoryDiscount(String highestCategoryDiscount) {
		this.highestCategoryDiscount = highestCategoryDiscount;
	}


	public String getProductCategoryName() {
		return this.productCategoryName;
	}

	public void setProductCategoryName(String productCategoryName) {
		this.productCategoryName = productCategoryName;
	}


	public String getProductImage() {
		return this.productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}


	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}


	public String getProductPrice() {
		return this.productPrice;
	}

	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}


	public float getRating() {
		return this.rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}

}