package com.jspstudy.ch03.vo;

public class Book {
	
	private String img;
	private String title;
	private String author;
	private String price;
	private String delivery;
	
	public Book(String img, String title, 
			String author, String price, String delivery) {
		this.img = img;
		this.title = title;
		this.author = author;
		this.price = price;
		this.delivery = delivery;		
	}
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getDelivery() {
		return delivery;
	}
	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}
	
}
