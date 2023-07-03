package com.shopKart.product;


public class Product {
int pid;
String pname;
int pprice;
public Product(int pid,String name,int pprice) {
	super();
	this.pid=pid;
	this.pname=pname;
	this.pprice=pprice;
}
	public int getPid() {
		return pid;
	}
	public void setPid() {
		this.pid= pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname() {
			this.pname=pname;
}
	public int getPprice() {
		return pprice;
	}
	public void setPprice() {
		this.pprice= pprice;
	} 
	
	

	
	
}
