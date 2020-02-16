<title>Authentication Page</title>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%
   	String name=request.getParameter("userid");      
   	String pass=request.getParameter("pass");
	
    try{
			application.setAttribute("user",name);
			String sql="SELECT * FROM user where name='"+name+"' and pass='"+pass+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			String utype="";
			if(rs.next()){
			
			String sql1="SELECT * FROM attacker where user='"+name+"' ";
			Statement stmt1 = connection.createStatement();
			ResultSet rs1 =stmt1.executeQuery(sql1);
			
			if(rs1.next()==true)
			{
			out.print("YOU ARE UNDER REVOKATATION !!! YOU CAN'T LOGIN NOW");
			%>
			<Br>
			<a href="Users.html"> <<<<<<< Back </a>
             
			
			<%}
			else if(rs1.next()!=true)
			{
			
				response.sendRedirect("EndUserMain.jsp");
			}
			
			
			}
			else
			{
				response.sendRedirect("WrongLogin.html");
			}
		
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>