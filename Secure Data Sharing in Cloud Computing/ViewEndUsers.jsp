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
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="templatemo_wrapper">
	<div id="templatemo_left_column">
        <div id="site_title">
            <h1><a href="http://www.templatemo.com/page/1" target="_parent"><span>Secure Data Sharing in Cloud Computing Using Revocable Storage Identity Based Encryption</span></a></h1>
            <p>&nbsp;</p>
        </div> <!-- end of site_title -->
        
        <div id="templatemo_sidebar">
        
        	<div class="service_section">
            
            	<h2>Menu</h2>
        
                <ul class="service_list">
                    <li><a href="KAMain.jsp">Home</a></li>
                    <li></li>
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
                <li><a href="" target="_parent">Home</a></li>
                <li><a href="" target="_parent">Data Provider </a></li>
                <li><a href="" target="_parent">Storage Server </a></li>
                <li><a href="KAMAIN.jsp" class="current">Key Authority </a></li>
                <li><a href="" target="_parent">Users</a></li>
                
            </ul>
        
        </div> <!-- end of templatemo_menu -->
        
        <div id="templatemo_content_wrapper">
        
        	<div id="templatemo_content">
       			
                <h2>VIEW ALL END USERS </h2>
                
                 <p><br />
</p>
                
              <div class="cleaner_h20"><table width="620" border="1" align="center">
              <tr>
                <td width="122" height="32"><div align="center"><span class="style1">User Image </span></div></td>
                <td width="111"><div align="center"><span class="style1">User Name </span></div></td>
                <td width="76"><div align="center"><span class="style1">DOB</span></div></td>
                <td width="115"><div align="center"><span class="style1">E-Mail</span></div></td>
                <td width="87"><div align="center"><span class="style3">Mobile</span></div></td>
                <td width="69"><div align="center"><span class="style3">Location </span></div></td>
              </tr>
              <%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9,s10,s11,s12,s13="";
	int i=0,j=0;

      	try 
	{
        
           String query="select * from user "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		
		s3=rs.getString(7);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(9);
%>
              <tr>
                <td><div align="center">
                    <input  name="image" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit" />
                </div></td>
                <td><div align="center"><%=s2%></div></td>
                <td><div align="center"><%=s3%></div></td>
                <td><div align="center"><%=s4%></div></td>
                <td><div align="center"><%=s5%></div></td>
                <td><div align="center"><%=s6%></div></td>
              </tr>
              <%

	 
	   }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
            </table></div>
                
                <h2>&nbsp;</h2>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
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