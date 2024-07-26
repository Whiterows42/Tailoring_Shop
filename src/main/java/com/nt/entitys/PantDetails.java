package com.nt.entitys;

public class PantDetails {

		private String pantHeight;
		private String pantKnee;
		private String pantLegsBottom;
		private String pantOther;
		private String pantPocket;
		private String pantPress;
		private String pantQuantity;
		private float pantRate;
		private String pantSeat;
		private String pantShape;
		private String pantThigh;
		private String pantTip;
		private String pantType;
		private String pantWaist;



	public PantDetails(String pantHeight, String pantKnee, String pantLegsBottom, String pantOther, String pantPocket,
			String pantPress, String pantQuantity, float pantRate, String pantSeat, String pantShape, String pantThigh,
			String pantTip, String pantType, String pantWaist) {
		super();
		this.pantHeight = pantHeight;
		this.pantKnee = pantKnee;
		this.pantLegsBottom = pantLegsBottom;
		this.pantOther = pantOther;
		this.pantPocket = pantPocket;
		this.pantPress = pantPress;
		this.pantQuantity = pantQuantity;
		this.pantRate = pantRate;
		this.pantSeat = pantSeat;
		this.pantShape = pantShape;
		this.pantThigh = pantThigh;
		this.pantTip = pantTip;
		this.pantType = pantType;
		this.pantWaist = pantWaist;
	}

	public PantDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getPantHeight() {
		return pantHeight;
	}
	public void setPantHeight(String pantHeight) {
		this.pantHeight = pantHeight;
	}
	public String getPantKnee() {
		return pantKnee;
	}
	public void setPantKnee(String pantKnee) {
		this.pantKnee = pantKnee;
	}
	public String getPantLegsBottom() {
		return pantLegsBottom;
	}
	public void setPantLegsBottom(String pantLegsBottom) {
		this.pantLegsBottom = pantLegsBottom;
	}
	public String getPantOther() {
		return pantOther;
	}
	public void setPantOther(String pantOther) {
		this.pantOther = pantOther;
	}
	public String getPantPocket() {
		return pantPocket;
	}
	public void setPantPocket(String pantPocket) {
		this.pantPocket = pantPocket;
	}
	public String getPantPress() {
		return pantPress;
	}
	public void setPantPress(String pantPress) {
		this.pantPress = pantPress;
	}
	public String getPantQuantity() {
		return pantQuantity;
	}
	public void setPantQuantity(String pantQuantity) {
		this.pantQuantity = pantQuantity;
	}
	public float getPantRate() {
		return pantRate;
	}
	public void setPantRate(float pantRate) {
		this.pantRate = pantRate;
	}
	public String getPantSeat() {
		return pantSeat;
	}
	public void setPantSeat(String pantSeat) {
		this.pantSeat = pantSeat;
	}
	public String getPantShape() {
		return pantShape;
	}
	public void setPantShape(String pantShape) {
		this.pantShape = pantShape;
	}
	public String getPantThigh() {
		return pantThigh;
	}
	public void setPantThigh(String pantThigh) {
		this.pantThigh = pantThigh;
	}
	public String getPantTip() {
		return pantTip;
	}
	public void setPantTip(String pantTip) {
		this.pantTip = pantTip;
	}
	public String getPantType() {
		return pantType;
	}
	public void setPantType(String pantType) {
		this.pantType = pantType;
	}
	public String getPantWaist() {
		return pantWaist;
	}
	public void setPantWaist(String pantWaist) {
		this.pantWaist = pantWaist;
	}
	@Override
	public String toString() {
		return "PantDetails [ pantHeight=" + pantHeight + ", pantKnee=" + pantKnee + ", pantLegsBottom="
				+ pantLegsBottom + ", pantOther=" + pantOther + ", pantPocket=" + pantPocket + ", pantPress="
				+ pantPress + ", pantQuantity=" + pantQuantity + ", pantRate=" + pantRate + ", pantSeat=" + pantSeat
				+ ", pantShape=" + pantShape + ", pantThigh=" + pantThigh + ", pantTip=" + pantTip + ", pantType="
				+ pantType + ", pantWaist=" + pantWaist + "]";
	}



}
