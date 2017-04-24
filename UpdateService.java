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

import org.springframework.stereotype.Service;

import com.demo.dao.DBUtil;
import com.demo.model.Flight;

@Service
public class UpdateService {

	
	private static Connection connection;
	 private CallableStatement cst=null;
	 private PreparedStatement pst=null;
	 private ResultSet rs=null;
	HttpServletRequest request;
	 HttpServletResponse response;
	public UpdateService(){
		
	connection=DBUtil.getMyConnection();
	if(connection !=null){
		System.out.println("connection done");}
		else
			System.out.println("connection not done");
	
	}
	
	
	
	
	
	public void updateFlight(Flight ff) throws SQLException {
		 List<Flight> bs=new ArrayList<Flight>();
		try{
		String s = "update flight_201277 set arr_date=?,dep_time=?,dep_date=?,class_type=?,from_loc=?,to_loc=?,arr_time=?,f_name=?,f_amt=? where f_id=?";
		System.out.println("before query");
		PreparedStatement ps=connection.prepareStatement(s);
		System.out.println("after query");
		ps.setString(1,ff.getArr_date());
		ps.setString(2, ff.getDep_time());
		ps.setString(3, ff.getDep_date());
		ps.setString(4, ff.getClass_type());
		ps.setString(5, ff.getFrom_loc());
		ps.setString(6, ff.getTo_loc());
		ps.setString(7, ff.getArr_time());
		ps.setString(8, ff.getF_name());
		ps.setString(9, ff.getF_amt());
		ps.setInt(10, ff.getF_id());
	    ps.executeQuery();
	    System.out.println("End service");
		
		
	}    
	catch(Exception e){
			e.printStackTrace();
		}
	

}

}