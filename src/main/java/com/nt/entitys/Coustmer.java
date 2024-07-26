package com.nt.entitys;




public class Coustmer {

    private int id;
    private String address;
    private String contact;
    private String name;
    private float amount;
    private float paidAmount;
    private float pendingAmount;
    private String status;
    private String email;

    private ShirtDetails shirtDetails;

    private PantDetails pantDetails;

    private Receipt receipts;


	public Coustmer(int id, String address, String contact, String name, float amount, float paidAmount,
			float pendingAmount, String status, String email, ShirtDetails shirtDetails, PantDetails pantDetails,
			Receipt receipts) {
		super();
		this.id = id;
		this.address = address;
		this.contact = contact;
		this.name = name;
		this.amount = amount;
		this.paidAmount = paidAmount;
		this.pendingAmount = pendingAmount;
		this.status = status;
		this.email = email;
		this.shirtDetails = shirtDetails;
		this.pantDetails = pantDetails;
		this.receipts = receipts;
	}

	public Coustmer() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public ShirtDetails getShirtDetails() {
		return shirtDetails;
	}

	public void setShirtDetails(ShirtDetails shirtDetails) {
		this.shirtDetails = shirtDetails;
	}

	public PantDetails getPantDetails() {
		return pantDetails;
	}

	public void setPantDetails(PantDetails pantDetails) {
		this.pantDetails = pantDetails;
	}

	public Receipt getReceipts() {
		return receipts;
	}

	public void setReceipts(Receipt receipts) {
		this.receipts = receipts;
	}

	public float getAmount() {
		return amount;
	}

	public void setAmount(float amount) {
		this.amount = amount;
	}

	public float getPaidAmount() {
		return paidAmount;
	}

	public void setPaidAmount(float paidAmount) {
		this.paidAmount = paidAmount;
	}

	public float getPendingAmount() {
		return pendingAmount;
	}

	public void setPendingAmount(float pendingAmount) {
		this.pendingAmount = pendingAmount;
	}

	@Override
	public String toString() {
		return "Coustmer [id=" + id + ", address=" + address + ", contact=" + contact + ", name=" + name + ", amount="
				+ amount + ", paidAmount=" + paidAmount + ", pendingAmount=" + pendingAmount + ", status=" + status
				+ ", email=" + email + ", shirtDetails=" + shirtDetails + ", pantDetails=" + pantDetails + ", receipts="
				+ receipts + "]";
	}



}

