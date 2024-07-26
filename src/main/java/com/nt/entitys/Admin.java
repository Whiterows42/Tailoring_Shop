package com.nt.entitys;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class Admin {

	private String first_name;
	private String last_name;
	private String admin_email;

	private  java.sql.Date  dob;
	private String password;

	private CommonsMultipartFile image_name;

	private String orignalename;




	public Admin() {
		super();
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getAdmin_email() {
		return admin_email;
	}

	public void setAdmin_email(String admin_email) {
		this.admin_email = admin_email;
	}





	public java.sql.Date getDob() {
		return dob;
	}

	public void setDob(java.sql.Date dob) {
		this.dob = dob;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}



	public CommonsMultipartFile getImage_name() {
		return image_name;
	}

	public void setImage_name(CommonsMultipartFile image_name) {
		this.image_name = image_name;
	}


	public String getOrignalename() {
		return orignalename;
	}

	public void setOrignalename(String orignalename) {
		this.orignalename = orignalename;
	}

	@Override
	public String toString() {
		return "Admin [first_name=" + first_name + ", last_name=" + last_name + ", admin_email=" + admin_email
				+ ", dob=" + dob + ", password=" + password + ", image_name=" + image_name + ", orignalename="
				+ orignalename + "]";
	}






}
