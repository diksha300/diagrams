<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ page import="java.util.*" %>
<% 	pageContext.setAttribute("eList", (List)session.getAttribute("resultSet"));%>
</head>
<body>
<table>
   <font color="white">
      <TH></th>                    
      <TH></th>
      <c:forEach var="mylist" items="${eList}">
        <tr>
          Flight Id:<td><tr>${mylist.f_id}</tr></td><br>
          Flight Arrival Date:<td><tr>${mylist.arr_date}</tr></td><br>
           Flight Departure time:<td><tr>${mylist.dep_time}</tr></td><br>
            Flight Departure Date:<td><tr>${mylist.dep_date}</tr></td><br>
             Flight Class:<td><tr>${mylist.class_type}</tr></td><br>
              Flight Location:<td><tr>${mylist.from_loc}</tr></td><br>
               Flight Destination:<td><tr>${mylist.to_loc}</tr></td><br>
                Flight Arrival time:<td><tr>${mylist.arr_time}</tr></td><br>
                Flight amount:<td><tr>${mylist.f_amt}</tr></td>
              <br>
        </tr>
        
        <button type="button" onclick="window.location.href='Payment.jsp'">Book</button>
        <br><br>
<!--         <a href="Payment.jsp">Proceed to pay</a><br><br> -->
      </c:forEach>
      </font>
    </table>
</body>
</html>

