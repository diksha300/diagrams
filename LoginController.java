package com.demo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.demo.model.User;

import com.demo.service.LoginSe;


@RestController
public class LoginController {
	
	   LoginSe mapservice=new  LoginSe();

	   @RequestMapping(value="/login/{userName}/{password}",method=RequestMethod.POST)
       public boolean checkUser(@PathVariable String userName, @PathVariable String password){
              User login=new User();
              login.setP_name(userName);
              login.setP_pwd(password);
              boolean valid= mapservice.checkUser(login);
              return valid;
       }

	
	
	
	
/*	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String submit(Model model, @ModelAttribute("loginBean") LoginBean loginBean,HttpServletRequest request,
			HttpServletResponse response) throws SQLException, IOException {
		
		if (loginBean != null && loginBean.getUserName() != null & loginBean.getPassword() != null) {
			  DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
		        String url="jdbc:oracle:thin:@10.232.71.29:1521:INATP02";
		     
				
		        Connection con = DriverManager.getConnection(url,"Shobana","Shobana");
		        response.setContentType("text/html");  
			    PrintWriter out = response.getWriter();  
			          
			    String n=request.getParameter("userName");  
			    String p=request.getParameter("password");  
			     try {
					PreparedStatement ps = con.prepareStatement(  
							"select * from passenger_201277 where p_name=? and p_pwd=?");
				
							ps.setString(1,n);
					       ps.setString(2,p);
						ResultSet rs = ps.executeQuery();
					if(rs.next()){  
						HttpSession session=request.getSession();  
				        session.setAttribute("userName",n);  
						model.addAttribute("msg", loginBean.getUserName());
						return "success";
					}
					else {  
					    out.print("Sorry username or password error");
		
					    model.addAttribute("error", "Invalid Details");
						return "login";
				
					}
			     }catch(SQLException e)
			     {
			    	 e.printStackTrace();
			     }

	
		}
		return null;
	}*/
}
