
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
.style2 {
	color: #FF0000;
	font-weight: bold;
	font-size: 36px;
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
                    <li><a href="#">Upload Data </a></li>
                    <li><a href="#">View Uploaded Files </a></li>
                    <li><a href="#">View Secret Key Generated  </a></li>
                    <li><a href="#">Update ciphertext  </a></li>
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
       			
              

      <%

      	try 
	{
      		String file=request.getParameter("t42");
      		String cont=request.getParameter("text2");
      		
			SimpleDateFormat sdfDate = new SimpleDateFormat(
					"dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat(
					"HH:mm:ss");

			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
      		KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
				Cipher encoder = Cipher.getInstance("RSA");
				KeyPair kp = kg.generateKeyPair();

				Key pubKey = kp.getPublic();

				byte[] pub = pubKey.getEncoded();
//				System.out.println("PUBLIC KEY" + pub);
		
				String pk = String.valueOf(pub);
				String rank="0";
			 Statement st=connection.createStatement();
	
				String user=(String) application.getAttribute("owner");
				String task="Upload";
				
				
				
				String owner = (String) application.getAttribute("owner");
				String keys = "ef50a0ef2c3e3a5f";
				
				byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			String ownerenc = new String(Base64.encode(owner.getBytes()));
				
				st.executeUpdate("insert into  cloudserver(fname,owner,ct,dt) values ('"+file+"','"+ownerenc+"','"+cont+"','"+dt+"')"); 
 
%>
		  <p><h2>Data Uploaded Successfully !!!
		</h2>
		  <p>  <a href="DataProviderMain.jsp">BACK</a></p>

		  <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>


</p>
                <div class="button"><a href="#">SDS</a></div>
                
            </div>
        
        </div> <!-- end of templatemo_content_wrapper --><div id="templatemo_content_bottom"></div>
    
    </div>

</div> <!-- end of templatemo_wrapper -->

<div id="templatemo_footer_wrapper">

	</body>
</html>