<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Data Provider Main :: SDS</title>
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
                    <li><a href="UploadData.jsp">Upload Data </a></li>
                    <li><a href="DataProviderData.jsp">View Uploaded Files </a></li>
                    <li><a href="ViewSecretKey.jsp">View Secret Key Generated  </a></li>
                    <li><a href="UpdateCipherText.jsp">Update ciphertext  </a></li>
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
       			
                <h2>WELCOME TO 
              <% String dp=(String)application.getAttribute("owner");
				
				     out.print(dp);
				
				 %></h2>
                <p>&nbsp;</p>
                <p class="style1">The data provider (e.g., David) first decides the users (e.g., Alice and Bob) who can share the data. Then, David encrypts the data under the identities Alice and Bob, and uploads the ciphertext of the shared data to the cloud server.</p>
                 
                 <h2> Concepts </h2>
                
                <p align="justify" class="em_text"><strong>The specific problem addressed in this paper is how to construct a fundamental identity-based cryptographical tool to achieve the above security goals. We also note that there exist other security issues that are equally important for a practical system of data sharing, such as the authenticity and availability of the shared data. But the research on these issues is beyond the scope of this paper.</strong></p>
                <ul class="latest_work_gallery">
                    <li><a href="http://www.tmksinfotech.com" target="_parent"><img src="images/templatemo_image_03.jpg" alt="image" /></a></li>
                    <li><a href="http://www.tmksinfotech.com/page/2" target="_parent"><img src="images/templatemo_image_04.jpg" alt="image" /></a></li>
                    <li><a href="http://www.tmksinfotech.com/page/3" target="_parent"><img src="images/templatemo_image_05.jpg" alt="image" /></a></li>
                    <li><a href="http://www.tmksinfotech.com/page/4" target="_parent"><img src="images/templatemo_image_06.jpg" alt="image" /></a></li>
              </ul>
                
                <div class="button"><a href="#">SDS</a></div>
                
            </div>
        
        </div> <!-- end of templatemo_content_wrapper --><div id="templatemo_content_bottom"></div>
    
    </div>

</div> <!-- end of templatemo_wrapper -->

<div id="templatemo_footer_wrapper">

	</body>
</html>