package com.demo.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.demo.model.Flight;
import com.demo.model.User;
import com.demo.service.UpdateService;

@RestController
public class UpdateController {
	 UpdateService upd=new UpdateService();
	
	
	
	 @RequestMapping(value="/update/{f_id}/{arr_date}/{dep_time}/{dep_date}/{class_type}/{from_loc}/{to_loc}/{arr_time}/{f_name}/{f_amt}",method = RequestMethod.POST)
	 public void updateUser(HttpSession session,@PathVariable int f_id,@PathVariable String arr_date,@PathVariable String dep_time,@PathVariable String dep_date,@PathVariable String class_type,@PathVariable String from_loc,@PathVariable String to_loc,@PathVariable String arr_time,@PathVariable String f_name,@PathVariable String f_amt)throws SQLException,IOException, ServletException{ 
		 Flight ff=new Flight();
		ff.setF_id(f_id); 
		 ff.setArr_date(arr_date);
		 ff.setDep_time(dep_time);
		 ff.setDep_date(dep_date);
		 ff.setClass_type(class_type);
		 ff.setFrom_loc(from_loc);
		 ff.setTo_loc(to_loc);
		 ff.setArr_time(arr_time);
		 ff.setF_name(f_name);
		 ff.setF_amt(f_amt);
	   
	
	     upd.updateFlight(ff);
	 
	 }
}
	   //  System.out.println(app.getString(2));
	  
	/*	 System.out.println("Inside while");
		session.setAttribute("fd",app.getInt(1));
		session.setAttribute("arrd",app.getString(2));
		session.setAttribute("dept",app.getString(3));
		session.setAttribute("depd",app.getString(4));
		session.setAttribute("cty",app.getString(5));
		session.setAttribute("floc",app.getString(6));
		session.setAttribute("tloc",app.getString(7));
		session.setAttribute("ati",app.getString(8));
		session.setAttribute("fnm",app.getString(11));
		session.setAttribute("fmt",app.getString(12));
		
	*/
	    /*  List<Flight> listFl=new ArrayList<Flight>(); 
		    while(app.next()){
			   Flight fk=new Flight();
			fk.setF_id(app.getInt(1));
			   fk.setArr_date(app.getString(2));
			   fk.setDep_time(app.getString(3));
			   fk.setDep_date(app.getString(4));
			   fk.setClass_type(app.getString(5));
			   fk.setFrom_loc(app.getString(6));
			   fk.setTo_loc(app.getString(7));
			   fk.setArr_time(app.getString(8));
			   fk.setF_name(app.getString(11));
			   fk.setF_amt(app.getString(12));
			   listFl.add(fk);
	
}
		    session.setAttribute("resultSet", listFl);

}
}
*/