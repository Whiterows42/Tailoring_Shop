package com.nt.daos;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.nt.entitys.Coustmer;

public class RowMapperImpl implements RowMapper<Coustmer> {

	@Override
	public Coustmer mapRow(ResultSet rs, int rowNum) throws SQLException {


		return null;
	}

}
