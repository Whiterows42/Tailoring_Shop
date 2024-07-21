package com.nt.daos;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.nt.entitys.Coustmer;
import com.nt.entitys.Receipt;

@Component
public class CoustomerDao {

	@Autowired
	private JdbcTemplate template;

	public boolean insertCoustomer(Coustmer coustmer) {
		try {
			Object[] Coutomerargs = { coustmer.getAddress(), coustmer.getContact(), coustmer.getName(),
					coustmer.getAmount(), coustmer.getPaidAmount(), coustmer.getPendingAmount(), coustmer.getStatus(),
					coustmer.getEmail() };

			int rs = this.template.update(
					"insert into customer (address,contact, name, payment ,payment_paid,payment_pending,status,email) values(?,?,?,?,?,?,?,?) ",
					Coutomerargs);

			Object[] shirtdetailsargs = { coustmer.getEmail(), coustmer.getShirtDetails().getShirtChest(),
					coustmer.getShirtDetails().getShirtCollar(), coustmer.getShirtDetails().getShirtHandLoose(),
					coustmer.getShirtDetails().getShirtHeight(), coustmer.getShirtDetails().getShirtLoose(),
					coustmer.getShirtDetails().getShirtOther(), coustmer.getShirtDetails().getShirtPress(),
					coustmer.getShirtDetails().getShirtQuantity(), coustmer.getShirtDetails().getShirtRate(),
					coustmer.getShirtDetails().getShirtShape(), coustmer.getShirtDetails().getShirtShoulder(),
					coustmer.getShirtDetails().getShirtSleeve(), coustmer.getShirtDetails().getShirtSleeveCup(),
					coustmer.getShirtDetails().getShirtStomach(), coustmer.getShirtDetails().getShirtType() };

			int rs1 = this.template.update(
					"insert into shirt_details (customer_id, shirt_chest, shirt_collar, shirt_hand_loose, shirt_height, shirt_loose, shirt_other, shirt_press, shirt_quantity, shirt_rate, shirt_shape, shirt_shoulder, shirt_sleeve, shirt_sleeve_cup, shirt_stomach, shirt_type) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
					shirtdetailsargs);

			Object[] pantdetialsargs = { coustmer.getEmail(), coustmer.getPantDetails().getPantHeight(),
					coustmer.getPantDetails().getPantKnee(), coustmer.getPantDetails().getPantLegsBottom(),
					coustmer.getPantDetails().getPantOther(), coustmer.getPantDetails().getPantPocket(),
					coustmer.getPantDetails().getPantPress(), coustmer.getPantDetails().getPantQuantity(),
					coustmer.getPantDetails().getPantRate(), coustmer.getPantDetails().getPantSeat(),
					coustmer.getPantDetails().getPantShape(), coustmer.getPantDetails().getPantThigh(),
					coustmer.getPantDetails().getPantTip(), coustmer.getPantDetails().getPantType(),
					coustmer.getPantDetails().getPantWaist() };

			int rs2 = this.template.update(
					"INSERT INTO pant_details (customer_id, pant_height, pant_knee, pant_legs_bottom, pant_other, pant_pocket, pant_press, pant_quantity, pant_rate, pant_seat, pant_shape, pant_thigh, pant_tip, pant_type, pant_waist) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
					pantdetialsargs);

			Receipt receipt = coustmer.getReceipts();

			Object[] reciptdetailsargs = { receipt.getCurrDate(), receipt.getDeliveryDate(), coustmer.getEmail(),
					receipt.getOrder_status(), coustmer.getAmount(), coustmer.getPaidAmount(),
					coustmer.getPendingAmount() };

			int rs3 = this.template.update(
					"INSERT INTO receipt (curr_date, delivery_date, customer, status,  amount, paid_amount, pending_amount) VALUES (?, ?, ?, ?, ?, ?, ?)",
					reciptdetailsargs);

			if (rs != 0 && rs1 != 0 && rs2 != 0 && rs3 != 0) {

				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	
	

}
