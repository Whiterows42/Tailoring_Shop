	package com.nt.daos;

	import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.nt.entitys.Admin;
import com.nt.entitys.Coustmer;
import com.nt.entitys.PantDetails;
import com.nt.entitys.Receipt;
import com.nt.entitys.ShirtDetails;

	@Component
	public class Dashboarddao {

	    @Autowired
	    private JdbcTemplate template;

	    public int showUserCount(String adminEmail) {
	        String sql = "SELECT COUNT(email) AS user_count FROM customer where admin_email = ?";
	        Integer count = this.template.queryForObject(sql, (rs, rowNum) -> rs.getInt("user_count"),adminEmail);
	        return count != null ? count : 0;
	    }
	    public int showOrderCount(String adminEmail) {
	        String sql = "SELECT COUNT(status) AS user_count FROM customer where admin_email = ?";
	        Integer count = this.template.queryForObject(sql, (rs, rowNum) -> rs.getInt("user_count"),adminEmail );
	        return count != null ? count : 0;
	    }

	    public List<Coustmer> getAllCustomers(String adminEmail) {
	        String sql = "SELECT c.id, c.address, c.contact, c.name, c.payment, c.payment_paid, c.payment_pending, c.status, c.email, " +
	                     "r.curr_date, r.delivery_date, r.status AS order_status, r.amount AS receipt_amount, r.paid_amount AS receipt_paid_amount, r.pending_amount AS receipt_pending_amount, " +
	                     "pd.pant_height, pd.pant_knee, pd.pant_legs_bottom, pd.pant_other, pd.pant_pocket, pd.pant_press, pd.pant_quantity, pd.pant_rate, pd.pant_seat, pd.pant_shape, pd.pant_thigh, pd.pant_tip, pd.pant_type, pd.pant_waist, " +
	                     "sd.shirt_chest, sd.shirt_collar, sd.shirt_hand_loose, sd.shirt_height, sd.shirt_loose, sd.shirt_other, sd.shirt_press, sd.shirt_quantity, sd.shirt_rate, sd.shirt_shape, sd.shirt_shoulder, sd.shirt_sleeve, sd.shirt_sleeve_cup, sd.shirt_stomach, sd.shirt_type " +
	                     "FROM customer c " +
	                     "LEFT JOIN receipt r ON c.email = r.customer " +
	                     "LEFT JOIN pant_details pd ON c.email = pd.customer_id " +
	                     "LEFT JOIN shirt_details sd ON c.email = sd.customer_id " +
	                     "WHERE c.admin_email = ?";

	        Map<Integer, Coustmer> customerMap = new HashMap<>();

	        template.query(sql, new Object[]{adminEmail}, new RowMapper<Void>() {
	            @Override
	            public Void mapRow(ResultSet rs, int rowNum) throws SQLException {
	                int customerId = rs.getInt("id");

	                // Check if customer is already in the map
	                Coustmer customer = customerMap.get(customerId);

	                if (customer == null) {
	                    customer = new Coustmer();
	                    customer.setId(customerId);
	                    customer.setAddress(rs.getString("address"));
	                    customer.setContact(rs.getString("contact"));
	                    customer.setName(rs.getString("name"));
	                    customer.setAmount(rs.getFloat("payment"));
	                    customer.setPaidAmount(rs.getFloat("payment_paid"));
	                    customer.setPendingAmount(rs.getFloat("payment_pending"));
	                    customer.setStatus(rs.getString("status"));
	                    customer.setEmail(rs.getString("email"));
	                    customerMap.put(customerId, customer);
	                }

	                if (rs.getObject("curr_date") != null) {
	                    Receipt receipt = new Receipt();
	                    receipt.setCurrDate(rs.getDate("curr_date"));
	                    receipt.setDeliveryDate(rs.getDate("delivery_date"));
	                    receipt.setOrder_status(rs.getString("order_status"));
	                    receipt.setAmount(rs.getFloat("receipt_amount"));
	                    receipt.setPaidAmount(rs.getFloat("receipt_paid_amount"));
	                    receipt.setPendingAmount(rs.getFloat("receipt_pending_amount"));
	                    customer.setReceipts(receipt);
	                }

	                // Set PantDetails if they are available
	                if (rs.getObject("pant_height") != null) {
	                    PantDetails pantDetails = new PantDetails();
	                    pantDetails.setPantHeight(rs.getString("pant_height"));
	                    pantDetails.setPantKnee(rs.getString("pant_knee"));
	                    pantDetails.setPantLegsBottom(rs.getString("pant_legs_bottom"));
	                    pantDetails.setPantOther(rs.getString("pant_other"));
	                    pantDetails.setPantPocket(rs.getString("pant_pocket"));
	                    pantDetails.setPantPress(rs.getString("pant_press"));
	                    pantDetails.setPantQuantity(rs.getString("pant_quantity"));
	                    pantDetails.setPantRate(rs.getFloat("pant_rate"));
	                    pantDetails.setPantSeat(rs.getString("pant_seat"));
	                    pantDetails.setPantShape(rs.getString("pant_shape"));
	                    pantDetails.setPantThigh(rs.getString("pant_thigh"));
	                    pantDetails.setPantTip(rs.getString("pant_tip"));
	                    pantDetails.setPantType(rs.getString("pant_type"));
	                    pantDetails.setPantWaist(rs.getString("pant_waist"));
	                    customer.setPantDetails(pantDetails);
	                }

	                if (rs.getObject("shirt_chest") != null) {
	                    ShirtDetails shirtDetails = new ShirtDetails();
	                    shirtDetails.setShirtChest(rs.getString("shirt_chest"));
	                    shirtDetails.setShirtCollar(rs.getString("shirt_collar"));
	                    shirtDetails.setShirtHandLoose(rs.getString("shirt_hand_loose"));
	                    shirtDetails.setShirtHeight(rs.getString("shirt_height"));
	                    shirtDetails.setShirtLoose(rs.getString("shirt_loose"));
	                    shirtDetails.setShirtOther(rs.getString("shirt_other"));
	                    shirtDetails.setShirtPress(rs.getString("shirt_press"));
	                    shirtDetails.setShirtQuantity(rs.getString("shirt_quantity"));
	                    shirtDetails.setShirtRate(rs.getFloat("shirt_rate"));
	                    shirtDetails.setShirtShape(rs.getString("shirt_shape"));
	                    shirtDetails.setShirtShoulder(rs.getString("shirt_shoulder"));
	                    shirtDetails.setShirtSleeve(rs.getString("shirt_sleeve"));
	                    shirtDetails.setShirtSleeveCup(rs.getString("shirt_sleeve_cup"));
	                    shirtDetails.setShirtStomach(rs.getString("shirt_stomach"));
	                    shirtDetails.setShirtType(rs.getString("shirt_type"));
	                    customer.setShirtDetails(shirtDetails);
	                }

	                return null;
	            }
	        });

	        return new ArrayList<>(customerMap.values());
	    }



	    public Map<String, Float> getMonthlyRevenue(String adminEmail) {
	        String sql = "SELECT DATE_FORMAT(r.curr_date, '%Y-%m') AS month, SUM(r.amount) AS total_revenue " +
	                     "FROM receipt r " +
	                     "JOIN customer c ON r.customer = c.email " +
	                     "WHERE c.admin_email = ? " +
	                     "GROUP BY month " +
	                     "ORDER BY month";

	        return template.query(sql, new Object[]{adminEmail}, (ResultSet rs) -> {
	            Map<String, Float> revenueMap = new HashMap<>();
	            while (rs.next()) {
	                String month = rs.getString("month");
	                float totalRevenue = rs.getFloat("total_revenue");
	                revenueMap.put(month, totalRevenue);
	            }
	            return revenueMap;
	        });
	    }


	    public List<Coustmer> getCustomerById(int id) {
	        String sql = "SELECT c.id, c.address, c.contact, c.name, c.payment, c.payment_paid, c.payment_pending, c.status, c.email, " +
	                     "r.curr_date, r.delivery_date, r.status AS order_status, r.amount AS receipt_amount, r.paid_amount AS receipt_paid_amount, r.pending_amount AS receipt_pending_amount, " +
	                     "pd.pant_height, pd.pant_knee, pd.pant_legs_bottom, pd.pant_other, pd.pant_pocket, pd.pant_press, pd.pant_quantity, pd.pant_rate, pd.pant_seat, pd.pant_shape, pd.pant_thigh, pd.pant_tip, pd.pant_type, pd.pant_waist, " +
	                     "sd.shirt_chest, sd.shirt_collar, sd.shirt_hand_loose, sd.shirt_height, sd.shirt_loose, sd.shirt_other, sd.shirt_press, sd.shirt_quantity, sd.shirt_rate, sd.shirt_shape, sd.shirt_shoulder, sd.shirt_sleeve, sd.shirt_sleeve_cup, sd.shirt_stomach, sd.shirt_type " +
	                     "FROM customer c " +
	                     "LEFT JOIN receipt r ON c.email = r.customer " +
	                     "LEFT JOIN pant_details pd ON c.email = pd.customer_id " +
	                     "LEFT JOIN shirt_details sd ON c.email = sd.customer_id " +
	                     "WHERE c.id = ?";

	        Map<Integer, Coustmer> customerMap = new HashMap<>();

	        template.query(sql, new Object[]{id}, new RowMapper<Void>() {
	            @Override
	            public Void mapRow(ResultSet rs, int rowNum) throws SQLException {
	                int customerId = rs.getInt("id");

	                Coustmer customer = customerMap.get(customerId);

	                if (customer == null) {
	                    customer = new Coustmer();
	                    customer.setId(customerId);
	                    customer.setAddress(rs.getString("address"));
	                    customer.setContact(rs.getString("contact"));
	                    customer.setName(rs.getString("name"));
	                    customer.setAmount(rs.getFloat("payment"));
	                    customer.setPaidAmount(rs.getFloat("payment_paid"));
	                    customer.setPendingAmount(rs.getFloat("payment_pending"));
	                    customer.setStatus(rs.getString("status"));
	                    customer.setEmail(rs.getString("email"));
	                    customerMap.put(customerId, customer);
	                }

	                if (rs.getObject("curr_date") != null) {
	                    Receipt receipt = new Receipt();
	                    receipt.setCurrDate(rs.getDate("curr_date"));
	                    receipt.setDeliveryDate(rs.getDate("delivery_date"));
	                    receipt.setOrder_status(rs.getString("order_status"));
	                    receipt.setAmount(rs.getFloat("receipt_amount"));
	                    receipt.setPaidAmount(rs.getFloat("receipt_paid_amount"));
	                    receipt.setPendingAmount(rs.getFloat("receipt_pending_amount"));
	                    customer.setReceipts(receipt);
	                }

	                // Set PantDetails if they are available
	                if (rs.getObject("pant_height") != null) {
	                    PantDetails pantDetails = new PantDetails();
	                    pantDetails.setPantHeight(rs.getString("pant_height"));
	                    pantDetails.setPantKnee(rs.getString("pant_knee"));
	                    pantDetails.setPantLegsBottom(rs.getString("pant_legs_bottom"));
	                    pantDetails.setPantOther(rs.getString("pant_other"));
	                    pantDetails.setPantPocket(rs.getString("pant_pocket"));
	                    pantDetails.setPantPress(rs.getString("pant_press"));
	                    pantDetails.setPantQuantity(rs.getString("pant_quantity"));
	                    pantDetails.setPantRate(rs.getFloat("pant_rate"));
	                    pantDetails.setPantSeat(rs.getString("pant_seat"));
	                    pantDetails.setPantShape(rs.getString("pant_shape"));
	                    pantDetails.setPantThigh(rs.getString("pant_thigh"));
	                    pantDetails.setPantTip(rs.getString("pant_tip"));
	                    pantDetails.setPantType(rs.getString("pant_type"));
	                    pantDetails.setPantWaist(rs.getString("pant_waist"));
	                    customer.setPantDetails(pantDetails);
	                }

	                if (rs.getObject("shirt_chest") != null) {
	                    ShirtDetails shirtDetails = new ShirtDetails();
	                    shirtDetails.setShirtChest(rs.getString("shirt_chest"));
	                    shirtDetails.setShirtCollar(rs.getString("shirt_collar"));
	                    shirtDetails.setShirtHandLoose(rs.getString("shirt_hand_loose"));
	                    shirtDetails.setShirtHeight(rs.getString("shirt_height"));
	                    shirtDetails.setShirtLoose(rs.getString("shirt_loose"));
	                    shirtDetails.setShirtOther(rs.getString("shirt_other"));
	                    shirtDetails.setShirtPress(rs.getString("shirt_press"));
	                    shirtDetails.setShirtQuantity(rs.getString("shirt_quantity"));
	                    shirtDetails.setShirtRate(rs.getFloat("shirt_rate"));
	                    shirtDetails.setShirtShape(rs.getString("shirt_shape"));
	                    shirtDetails.setShirtShoulder(rs.getString("shirt_shoulder"));
	                    shirtDetails.setShirtSleeve(rs.getString("shirt_sleeve"));
	                    shirtDetails.setShirtSleeveCup(rs.getString("shirt_sleeve_cup"));
	                    shirtDetails.setShirtStomach(rs.getString("shirt_stomach"));
	                    shirtDetails.setShirtType(rs.getString("shirt_type"));
	                    customer.setShirtDetails(shirtDetails);
	                }

	                return null;
	            }
	        });

	        return new ArrayList<>(customerMap.values());
	    }

	    public Admin getAdmins(String email) {
		 Admin admin1 =	this.template.queryForObject("select * from admin where admin_email =?",  new RowMapper<Admin>() {

				@Override
				public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub

                    Admin admin = new Admin();
                    admin.setFirst_name(rs.getString("first_name"));
                    admin.setLast_name(rs.getString("last_name"));
                    admin.setAdmin_email(rs.getString("admin_email"));
                    admin.setDob(rs.getDate("dob"));
                    admin.setPassword(rs.getString("password"));
                   admin.setOrignalename(rs.getString("image_name"));
                    return admin;
				}

			}, email);

	    	return admin1;
		}

	}
