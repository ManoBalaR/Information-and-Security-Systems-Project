
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
<title>Home Page:: SDS</title>
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
            <h1><a href="http://www.tmksinfotech.com/page/1" target="_parent"><span>Secure Data Sharing in Cloud Computing Using Revocable Storage Identity Based Encryption</span></a></h1>
            <p>&nbsp;</p>
        </div> <!-- end of site_title -->
        
        <div id="templatemo_sidebar">
        
        	<div class="service_section">
            
            	<h2 align="center">Storage Server Menu</h2>
        
              <div align="center">
                  <ul class="service_list">
                    
                  </ul>
              </div>
                <ul class="service_list">
				<li><a href="StorageServerMain.jsp">Home</a></li>
               
                    <li><a href="index.html">Log Out </a></li>
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
                <li><a href="" target="_parent">Data Provider </a></li>
                <li><a href="" target="_parent" >Storage Server </a></li>
                <li><a href="" >Key Authority </a></li>
                <li><a href="" target="_parent">Users</a></li>
				
                
            </ul>
        
        </div> <!-- end of templatemo_menu -->
        
        <div id="templatemo_content_wrapper">
        
        	<div id="templatemo_content">
       			
                <h2>Un Revoke User<br />
</h2>
                <div class="cleaner_h20">
                <div align="justify" class="style1">
				
				<form id="form1" name="form1" method="post" action="cunrevoke.jsp">
                  <p>
                    <p>
                    <em><strong>Select User Name To Un Revoke</strong></em> 
				    <select name="uname">
				      <%
						try 
					{
	
					String s2,s3=null;

          			String query="select * from attacker  "; 
           		    Statement st=connection.createStatement();
          		    ResultSet rs=st.executeQuery(query);
		while ( rs.next() )
	    {
	
		s3=rs.getString(2);
				  
				  %>
				            <option> 
			                <% out.print(s3); %> 
			                </option>
				      
		              </p>
		              <p>
				      &nbsp;
				      </p>
				      
		              <%
		  }
		}
		catch(Exception e)
          {
            out.println(e.getMessage());
          }		  
              %>
				      
			              </select>
                    <input type="submit" name="Submit" value="UnRevoke" />
			    </p>
                  </form>
				</div>
                <p>&nbsp;</p>
              </div>
                 
            </div>
        
        </div> <!-- end of templatemo_content_wrapper --><div id="templatemo_content_bottom"></div>
    
    </div>

</div> <!-- end of templatemo_wrapper -->

<div id="templatemo_footer_wrapper">

	</body>
</html>