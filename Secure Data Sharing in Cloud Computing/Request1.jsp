<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Home Page:: SDS</title>
<meta name="keywords" content="star, css templates, CSS, HTML" />
<meta name="description" content="Star is a free CSS template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" /></head>
<body>
<div id="templatemo_wrapper">
	<div id="templatemo_left_column">
        <div id="site_title">
            <h1><a href="http://www.templatemo.com/page/1" target="_parent"><span>Secure Data Sharing in Cloud Computing Using Revocable Storage Identity Based Encryption</span></a></h1>
            <p>&nbsp;</p>
        </div> <!-- end of site_title -->
        
        <div id="templatemo_sidebar">
        
        	<div class="service_section">
            
            	<h2>End User Menu</h2>
        
                <ul class="service_list">
                    <li><a href="EndUserMain.jsp">Home</a></li>
                   <li><a href="Request.jsp">Request Secret Key</a></li>
                    <li><a href="SecretKey.jsp">Find Secret Key</a></li>
          			<li><a href="Download.jsp">Download </a></li>
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
                <li><a href="index.html" target="_parent" >Home</a></li>
               <li><a href="DataProvider.html" target="_parent">Data Provider </a></li>
                <li><a href="Storage_Server.html" target="_parent">Storage Server </a></li>
                <li><a href="Key_Authority.html">Key Authority </a></li>
                <li><a href="Users.html" target="_parent" class="current">Users</a></li>
                
            </ul>
        
        </div> <!-- end of templatemo_menu -->
        
        <div id="templatemo_content_wrapper">
        
        	<div id="templatemo_content">
       			
                <h2>Requested Secret Key Details </h2> 
                </h2>
                <p><strong></strong>              </p>
              <%
		  		String owner = request.getParameter("t142");
		  		String fname = request.getParameter("t14");
      			String uname=(String)application.getAttribute("user");
		  		String generate ="Generate Key";
				
				String query111="select * from request  where user='"+uname+"' and fname='"+fname+"' and owner='"+owner+"'"; 
				Statement st111=connection.createStatement();
				ResultSet rs111=st111.executeQuery(query111);
				
					
				if ( rs111.next())
			   	{
				%>
					<p><span class="style5">Request Already Sent To KA (Key Authority) !!! </span> </p>
					  <p><a href="EndUserMain.html" class="style6">BACK</a></p>
        			</div>
			<%	}
				else
				{
				String query11="select * from ownerfiles  where fname='"+fname+"' and owner='"+owner+"'"; 
				Statement st11=connection.createStatement();
				ResultSet rs11=st11.executeQuery(query11);
				
					
				if ( rs11.next())
			   	{
				
					String query1="insert into request(user,owner,fname,sk) values('"+uname+"','"+owner+"','"+fname+"','"+generate+"')";
					connection.createStatement().executeUpdate(query1);
					
		%>
          <p><span class="style5">Request Sent To KA (Key Authority) !!! </span> </p>
					  <p><a href="EndUserMain.jsp" class="style6">BACK</a></p>
        </div>
		<%
				}
				else
				{
		%>
					<label>
					  <div align="left">
						<p><span class="style5"><br />
						 File Doesn't Exist !!!  </span> !!! </p>
						<p><a href="Request.jsp" class="style6">BACK</a></p>
					  </div>
					  </div>
			 		<%
				}
				}
		  %>

                <strong></strong><br />
</p>
                
              <div class="cleaner_h20"></div>
                
                <h2> Concepts </h2>
                
                <p align="justify" class="em_text"><strong>The specific problem addressed in this paper is how to construct a fundamental identity-based cryptographical tool to achieve the above security goals. We also note that there exist other security issues that are equally important for a practical system of data sharing, such as the authenticity and availability of the shared data. But the research on these issues is beyond the scope of this paper.</strong></p>
                <ul class="latest_work_gallery">
                    <li><a href="http://www.templatemo.com/page/1" target="_parent"><img src="images/templatemo_image_03.jpg" alt="image" /></a></li>
                    <li><a href="http://www.templatemo.com/page/2" target="_parent"><img src="images/templatemo_image_04.jpg" alt="image" /></a></li>
                    <li><a href="http://www.templatemo.com/page/3" target="_parent"><img src="images/templatemo_image_05.jpg" alt="image" /></a></li>
                    <li><a href="http://www.templatemo.com/page/4" target="_parent"><img src="images/templatemo_image_06.jpg" alt="image" /></a></li>
              </ul>
                
                <div class="button"><a href="#">SDS</a></div>
                
            </div>
        
        </div> <!-- end of templatemo_content_wrapper --><div id="templatemo_content_bottom"></div>
    
    </div>

</div> <!-- end of templatemo_wrapper -->

<div id="templatemo_footer_wrapper">

	</body>
</html>