package com.demo.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.model.Flight;
import com.demo.service.InsertService;
import com.demo.service.UpdateService;

public class InsertController {
	 InsertService ins=new InsertService();
		
		
		
	 @RequestMapping(value="/insert/{f_id}/{arr_date}/{dep_time}/{dep_date}/{class_type}/{from_loc}/{to_loc}/{arr_time}/{air_code}/{route_no}/{f_name}/{f_amt}",method = RequestMethod.POST)
	 public void updateUser(@PathVariable int f_id,@PathVariable String arr_date,
			 @PathVariable String dep_time,@PathVariable String dep_date,@PathVariable String class_type,@PathVariable String from_loc,@PathVariable String to_loc,
			 @PathVariable String arr_time,@PathVariable int air_code,@PathVariable int route_no,@PathVariable String f_name,@PathVariable String f_amt)throws SQLException,IOException, ServletException{ 
		System.out.println("inside controller");
		 Flight fg=new Flight();
		fg.setF_id(f_id); 
		 fg.setArr_date(arr_date);
		 fg.setDep_time(dep_time);
		 fg.setDep_date(dep_date);
		 fg.setClass_type(class_type);
		 fg.setFrom_loc(from_loc);
		 fg.setTo_loc(to_loc);
		 fg.setArr_time(arr_time);
		 fg.setAir_code(air_code);
		 fg.setRoute_no(route_no);
		 fg.setF_name(f_name);
		 fg.setF_amt(f_amt);
	   
	
	     ins.insertFlight(fg);
	     System.out.println("End of controller");
	 }
}

