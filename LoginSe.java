package com.demo.service;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Service;

import com.demo.dao.DBUtil;
import com.demo.model.User;


	@Service
	public class LoginSe {
	                private Connection connection=null;
	                PreparedStatement ps;
	                ResultSet rs;
	                boolean flag;
	                public LoginSe(){
	            		
	            		connection=DBUtil.getMyConnection();
	            		if(connection !=null){
	            			System.out.println("connection done");}
	            			else
	            				System.out.println("connection not done");
	            		
	            		}
  
	
                   public boolean checkUser(User log){
                       try {
                               ps=connection.prepareStatement("select * from passenger_201277 where p_name=? and p_pwd=?");
                     
                          	
                          		System.out.println("After query");
                          		ps.setString(1,log.getP_name());
                          		ps.setString(2,log.getP_pwd());
                          		rs=ps.executeQuery();
                          		
                              if(rs.next()){
                                    flag=true;
                              }
                              else{
                                    flag=false;
                              }
                    
                   

	
   } catch (SQLException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
}    return flag;
                   }
	}
