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
	font-style: italic;
	font-weight: bold;
}
-->
</style>
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
       			
                <h2>END USER MAIN :: 
              <% String dp=(String)application.getAttribute("user");
				
				     out.print(dp);
				
				 %></h2> </h2>
                <p>&nbsp;</p>
                <p><strong>Cloud computing provides a flexible and convenient way for data sharing, which brings various benefits for both the society and individuals. But there exists a natural resistance for users to directly outsource the shared data to the cloud server since the data often contain valuable information. Thus, it is necessary to place cryptographically enhanced access control on the shared data. Identity-based encryption is a promising cryptographical primitive to build a practical data sharing system. However, access control is not static. That is, when some user’s authorization is expired, there should be a mechanism that can remove him/her from the system. Consequently, the revoked user cannot access both the previously and subsequently shared data.<img class="fl_img" src="images/templatemo_image_02.jpg" alt="image" />To this end, we propose a notion called revocable-storage identity-based encryption (RS-IBE), which can provide the forward/backward security of ciphertext by introducing the functionalities of user revocation and ciphertext update simultaneously. Furthermore, we present a concrete construction of RS-IBE, and prove its security in the defined security model. The performance comparisons indicate that the proposed RS-IBE scheme has advantages in terms of functionality and efficiency, and thus is feasible for a practical and cost-effective data-sharing system. Finally, we provide implementation results of the proposed scheme to demonstrate its practicability.</strong><br />
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