package com.demo.service;

import java.sql.CallableStatement;
import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

import com.demo.dao.DBUtil;
import com.demo.model.Flight;

@Service
public class InsertService {


		
		private static Connection connection;
		 private CallableStatement ps=null;
		 HttpServletRequest request;
		 HttpServletResponse response;
		public InsertService(){
			
		connection=DBUtil.getMyConnection();
		if(connection !=null){
			System.out.println("connection done");}
			else
				System.out.println("connection not done");
		
		}
		public void insertFlight(Flight ff) {
		
			try{
				 ps = connection.prepareCall("{call INSERTflight(?,?,?,?,?,?,?,?,?,?,?,?)}");
			System.out.println("after query");
            ps.setInt(1, ff.getF_id());
			ps.setString(2,ff.getArr_date());
			ps.setString(3, ff.getDep_time());
			ps.setString(4, ff.getDep_date());
			ps.setString(5, ff.getClass_type());
			ps.setString(6, ff.getFrom_loc());
			ps.setString(7, ff.getTo_loc());
			ps.setString(8, ff.getArr_time());
			ps.setInt(9, ff.getAir_code());
			ps.setInt(10, ff.getRoute_no());
			ps.setString(11 ,ff.getF_name());
			ps.setString(12, ff.getF_amt());
			
		    ps.executeQuery();
		    System.out.println("End service");
			
			
		}    
		catch(Exception e){
				e.printStackTrace();
			}
	
			
			
		}
		

		
	}


