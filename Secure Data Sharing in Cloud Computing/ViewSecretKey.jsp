<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Data Provider :: SDS</title>
<meta name="keywords" content="star, css templates, CSS, HTML" />
<meta name="description" content="Star is a free CSS template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div id="templatemo_wrapper">
	<div id="templatemo_left_column">
        <div id="site_title">
            <h1><a href="http://www.tmksinfotech.com" target="_parent"><span>Secure Data Sharing in Cloud Computing Using Revocable Storage Identity Based Encryption</span></a></h1>
            <p>&nbsp;</p>
        </div> <!-- end of site_title -->
        
        <div id="templatemo_sidebar">
        
        	<div class="service_section">
            
            	<h2>Data Provider Main </h2>
        
                <ul class="service_list">
                    <li><a href="DataProviderMain.jsp">Home</a></li>
                    
                    <li><a href="index.html">Logout</a></li>
                </ul>

			</div>
            
            <div class="news_section">
            
            	<h2>Concepts</h2>
            	<div class="news_box">
                        <h3><a href="#">Cloud computing, Data sharing, Revocation, Identity-based encryption</a></h3>
              </div>
            
            <div class="news_box">
                        <h3><a href="#">ciphertext update, decryption key exposure,Data confidentiality,<br />
                        Backward secrecy,<br />
                        Forward secrecy</a></h3>
              </div>
            
            <div class="cleaner_h20"></div>
            <div class="button"><a href="#">Read all</a></div>
            
            </div>
                    
        </div>
    
    </div> <!-- end of left column -->
    
    <div id="templatemo_right_column">
    
    	<div id="templatemo_menu">
    
            <ul>
                <li><a href="" target="_parent" >Home</a></li>
                <li><a href="DataProviderMain.jsp" target="_parent" class="current">Data Provider </a></li>
                <li><a href="" target="_parent">Storage Server </a></li>
                <li><a href="">Key Authority </a></li>
                <li><a href="" target="_parent">Users</a></li>
                
            </ul>
        
        </div> <!-- end of templatemo_menu -->
        
        <div id="templatemo_content_wrapper">
        
        	<div id="templatemo_content">
       			
                <h2>YOUR DATA FILES KEY::  
                  <% String dp=(String)application.getAttribute("owner");
				
				     out.print(dp);
				
				 %></h2>
                <p>
				
				
				<table width="618" border="1" align="left">
              <tr>
                <td width="87" height="31"><div align="center"><span class="style5">User ID </span></div></td>
                <td width="155"><div align="center"><span class="style5">Owner Name </span></div></td>
				<td width="161"><div align="center"><span class="style5">File Name </span></div></td>
                <td width="187"><div align="center"><span class="style5">Date &amp; Time</span></div></td>
              </tr>
              <%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
      		String owner = (String) application.getAttribute("owner");
      		String query="select * from request where owner='"+owner+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		
		if(s5.equalsIgnoreCase("Generate Key"))
		{
			
		}
		else
		{
		%>
              <tr>
                <td height="29"><div align="center"><%=s2%></div></td>
                <td><div align="center"><%=s3%></div></td>
				<td><div align="center"><%=s4%></div></td>
                <td><div align="center"><%=s5%></div></td>
              </tr>
              <%
	   }
	  }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
            </table>
				
				</p>
                <p class="style1">&nbsp;</p>
                <p class="style1"><a href="DataProviderMain.jsp">&lt;&lt;&lt;Back</a></p>
        	</div>
        
        </div> <!-- end of templatemo_content_wrapper --><div id="templatemo_content_bottom"></div>
    
    </div>

</div> <!-- end of templatemo_wrapper -->

<div id="templatemo_footer_wrapper">

	</body>
</html>