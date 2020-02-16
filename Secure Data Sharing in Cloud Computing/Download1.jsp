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
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
	font-style: italic;
}
-->
</style>

<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}

</script>
<script type='text/javascript'>

function saveTextAsFile()
{
	var textToWrite = document.getElementById("textarea").value;
	var textFileAsBlob = new Blob([textToWrite], {type:'text/plain'});
	var fileNameToSaveAs = "File.txt";

	var downloadLink = document.createElement("a");
	downloadLink.download = fileNameToSaveAs;
	downloadLink.innerHTML = "Download File";
	if (window.webkitURL != null)
	{
		// Chrome allows the link to be clicked
		// without actually adding it to the DOM.
		downloadLink.href = window.webkitURL.createObjectURL(textFileAsBlob);
	}
	else
	{
		// Firefox requires the link to be added to the DOM
		// before it can be clicked.
		downloadLink.href = window.URL.createObjectURL(textFileAsBlob);
		downloadLink.onclick = destroyClickedElement;
		downloadLink.style.display = "none";
		document.body.appendChild(downloadLink);
	}

	downloadLink.click();
}

function destroyClickedElement(event)
{
	document.body.removeChild(event.target);
}



</script>


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
       			
               <%
		  	
		    	try 
				{
		  		String file = request.getParameter("t1");
				String user = request.getParameter("t2");
				String sk=request.getParameter("t13");
				String keys = "ef50a0ef2c3e3a5f";
				
				application.setAttribute("file",file);
				application.setAttribute("sk",sk);
				
				byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c = Cipher.getInstance("AES");
      			c.init(Cipher.ENCRYPT_MODE, key);
      			String filename = new String(Base64.encode(file.getBytes()));
				
				String strQuery = "select * from request where user='"+user+"' and fname='"+file+"' and  sk='"+sk+"'";
				String strQuery1 = "select * from cloudserver where fname='"+filename+"'";
				
				SimpleDateFormat sdfDate = new SimpleDateFormat(
					"dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat(
					"HH:mm:ss");

			Date now = new Date();

			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
				
				
				
				ResultSet rs = connection.createStatement().executeQuery(strQuery);
				{
					if(rs.next()==true)
					{
					ResultSet rs1 = connection.createStatement().executeQuery(strQuery1);
					{
					if(rs1.next()==true)
					{
								
						String ct=rs1.getString(4);
						
						byte[] keyValue1 = keys.getBytes();
      					Key key1 = new SecretKeySpec(keyValue1,"AES");
      					Cipher c1 = Cipher.getInstance("AES");
      					c1.init(Cipher.DECRYPT_MODE, key1);
      					String decryptedValue = new String(Base64.decode(ct.getBytes()));
						String task="Download";
				
				    String strQuery2 = "insert into transaction(user,fname,task,dt) values('"+user+"','"+file+"','"+task+"','"+dt+"')";
				connection.createStatement().executeUpdate(strQuery2);
						
			%></p>
          <h2><span>Download File  ::  </span></h2>
          <div class="clr"></div>
        </div>
        <div class="article">
         
            <label>
            <p align="center" class="style8 style1">Requested File Contents !!! </p>
            <p align="center" class="style8 style1">---------------------------------------</p>
            <label>
            <div align="center">
              <textarea name="text" id="textarea" cols="45" rows="17" value=""><%=decryptedValue%></textarea>
              <br/>
              <br/>
              <input type="submit" name="Submit" value="Download" onclick="saveTextAsFile()" />
            </div>
            </label>
            <p align="left">
              <%	
					}
					else
					{
						
		%>
            </p>
            <p class="style8">File Doesn't Exist !!!</p>
            </p>
            <br />
            <p><a href="Download.jsp">Back</a></p>
            <%
					}
				}
	 			}else
					{
					
						String strQuery2 = "insert into attacker(user,fname,sk,dt) values('"+user+"','"+file+"','"+sk+"','"+dt+"')";
						connection.createStatement().executeUpdate(strQuery2);
						
		%>
            </p>
            <p class="style8">File Name / Secret Key Mismatch  !!!</p>
            <p class="style8">You Are An Attacker !!! Now U R Under Revokation</p>
            </p>
            <br />
            <p><a href="Download.jsp">Back</a></p>
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