package com.nt.daos;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.nt.entitys.Admin;

@Component
public class AdminDao {

	@Autowired
	private JdbcTemplate template;

	public boolean registerAdmin(Admin admin, String imagename) {

		String sql = "INSERT INTO admin (first_name, last_name, admin_email, dob, password, image_name) "
				+ "VALUES (?, ?, ?, ?, ?, ?)";
		Object[] args = { admin.getFirst_name(), admin.getLast_name(), admin.getAdmin_email(), admin.getDob(),
				admin.getPassword(), imagename };
		int result = this.template.update(sql, args);

		return result > 0;
	}


	public boolean verifyAdmin(String email, String password) {
	    try {
	        Admin admin = this.template.queryForObject(
	            "SELECT first_name, last_name, admin_email, dob, password, image_name FROM admin WHERE admin_email = ? AND password = ?",
	            new RowMapper<Admin>() {
	                @Override
	                public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
	                    Admin admin = new Admin();
	                    admin.setFirst_name(rs.getString("first_name"));
	                    admin.setLast_name(rs.getString("last_name"));
	                    admin.setAdmin_email(rs.getString("admin_email"));
	                    admin.setDob(rs.getDate("dob"));
	                    admin.setPassword(rs.getString("password"));

	                    return admin;
	                }
	            },
	            email, password
	        );
	        System.out.println(admin);
	        if (admin.getAdmin_email().equals(email) && admin.getPassword().equals(password)) {
				return true;
			}
	    } catch (EmptyResultDataAccessException e) {
	        return false;
	    }
	    return false;
	}


}
