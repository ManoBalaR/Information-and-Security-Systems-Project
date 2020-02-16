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
                <li><a href="" target="_parent" class="current">Data Provider </a></li>
                <li><a href="" target="_parent">Storage Server </a></li>
                <li><a href="">Key Authority </a></li>
                <li><a href="" target="_parent">Users</a></li>
                
            </ul>
        
        </div> <!-- end of templatemo_menu -->
        
        <div id="templatemo_content_wrapper">
        
        	<div id="templatemo_content">
       			
                <h2>CIPHER TEXT DECRYPTED CONTENTS </h2>
                <p>&nbsp;</p>
				
				 <form id="form1" name="form1" method="post" action="EncFileContents2.jsp">
				
               <%
		  	
		    	try 
				{
		  		String file = request.getParameter("fname");
				
						String keys1 = "ef50a0ef2c3e3a5f";
						byte[] keyValue11 = keys1.getBytes();
      					Key key11 = new SecretKeySpec(keyValue11,"AES");
      					Cipher c11 = Cipher.getInstance("AES");
      					c11.init(Cipher.ENCRYPT_MODE, key11);
      					String efile = new String(Base64.encode(file.getBytes()));
				
				
				
					String strQuery1 = "select * from cloudserver where fname='"+efile+"'";
			
					ResultSet rs1 = connection.createStatement().executeQuery(strQuery1);
					{
					if(rs1.next()==true)
					{
						
						
						String ct=rs1.getString(4);
						
						String keys = "ef50a0ef2c3e3a5f";
						byte[] keyValue1 = keys.getBytes();
      					Key key1 = new SecretKeySpec(keyValue1,"AES");
      					Cipher c1 = Cipher.getInstance("AES");
      					c1.init(Cipher.DECRYPT_MODE, key1);
      					String decryptedValue = new String(Base64.decode(ct.getBytes()));
				
			%>
          </h2>
          <label>
          <div align="center">
		  
		    <p>
		      <input type="text" name="fname" value="<%=file%>"  />
		    </p>
		    <p>
		      <textarea name="contents" id="textarea" cols="45" rows="17"><%=decryptedValue%></textarea>
		      <br/>
		      <br/>
	        </p>
		    <td>&nbsp;</td>
          </div>
         
        </div>
      </div>
	            <p align="right">
	              <%
	   }
	  
        }   connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
	              <div align="center" > <input type="submit" name="Submit" value="Encrypt" /></div>
	            </p>
	            <p>&nbsp;</p>
	            <p>&nbsp;</p>
	            <p>&nbsp;        </p>
				 </form> 
		  <p>&nbsp;</p>
                <p class="style1">&nbsp;</p>
                 
          </div>
        
        </div> <!-- end of templatemo_content_wrapper --><div id="templatemo_content_bottom"></div>
    
    </div>

</div> <!-- end of templatemo_wrapper -->

<div id="templatemo_footer_wrapper">

	</body>
</html>