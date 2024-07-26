package com.nt.entitys;

import java.sql.Date;

public class Receipt {

	private java.sql.Date currDate;
	private java.sql.Date deliveryDate;
	private String order_status;
	private Float amount;
	private Float paidAmount;
	private Float pendingAmount;



	public Receipt(Date currDate, Date deliveryDate, String order_status, Float amount, Float paidAmount,
			Float pendingAmount) {
		super();
		this.currDate = currDate;
		this.deliveryDate = deliveryDate;
		this.order_status = order_status;
		this.amount = amount;
		this.paidAmount = paidAmount;
		this.pendingAmount = pendingAmount;
	}


	public Receipt() {
		super();
		// TODO Auto-generated constructor stub
	}


	public java.sql.Date getCurrDate() {
		return currDate;
	}
	public void setCurrDate(java.sql.Date currDate) {
		this.currDate = currDate;
	}
	public java.sql.Date getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(java.sql.Date deliveryDate) {
		this.deliveryDate = deliveryDate;
	}


	public Float getAmount() {
		return amount;
	}
	public void setAmount(Float amount) {
		this.amount = amount;
	}
	public Float getPaidAmount() {
		return paidAmount;
	}
	public void setPaidAmount(Float paidAmount) {
		this.paidAmount = paidAmount;
	}
	public Float getPendingAmount() {
		return pendingAmount;
	}
	public void setPendingAmount(Float pendingAmount) {
		this.pendingAmount = pendingAmount;
	}
	public String getOrder_status() {
		return order_status;
	}
	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}
	@Override
	public String toString() {
		return "Receipt [ currDate=" + currDate + ", deliveryDate=" + deliveryDate + ", order_status="
				+ order_status + ", amount=" + amount + ", paidAmount=" + paidAmount + ", pendingAmount="
				+ pendingAmount + "]";
	}






}
