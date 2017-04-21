package com.demo.service;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.dao.DBUtil;
import com.demo.model.Flight;

public class DeleteService {

	 private static Connection connection;

	 private PreparedStatement ps=null;
	 private ResultSet rs=null;
	HttpServletRequest request;
	 HttpServletResponse response;
	public DeleteService(){
		
	connection=DBUtil.getMyConnection();
	if(connection !=null){
		System.out.println("connection done");}
		else
			System.out.println("connection not done");
	
	}
	
	
   

	
	
	public void deleteFlight(Flight ff) throws SQLException {
	
		 try 
		    {
				String s = "DELETE FROM flight_201277 WHERE f_id=?";
				System.out.println("before query");
				ps=connection.prepareStatement(s);
		       ps.setInt(1,ff.getF_id());
		       ps.execute();
		    }
		    catch (SQLException e)
		    {
		           e.printStackTrace();
		    }

	

}

}
