<%@page import="java.sql.*"%>
<%@page import="action.Dbconnection"%>
<%@ page session="true" %>
<%@page import="java.sql.*"%>
<%@page import="action.Dbconnection"%>
<%@ page session="true" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Template Name: Internet Business
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>File Split Project</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<link rel="icon" href="img/architecture.jpg"></link>
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.hslides.1.0.js"></script>
<script type="text/javascript">
$((function () {
    $('#accordion').hSlides({
        totalWidth: 920,
        totalHeight: 300,
        minPanelWidth: 111,
        maxPanelWidth: 911,
		easing: "easeOutBack",
		activeClass: 'current'
    });
}));
</script>
</head>
    
        <%
if(request.getParameter("msg")!=null){%>
    
  <script>alert('File Seperated & Uploaded into two clouds..!')</script>


<%}
if(request.getParameter("m1")!=null){%>

<script>alert('File Seperation Failed..!')</script>
 <%
}
%>
<body id="top">
<div id="header">
  <div class="wrapper">
    <div class="fl_left">
     
    
    </div>
      <div class="fl_right"><h1>Cipher Security</h1> </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div id="topbar">
  <div class="wrapper">
    <div id="topnav">
      <ul>
      <li><a href="ownerhome.jsp">Home</a></li>
        <li><a href="fileupload.jsp">File upload</a></li>
        <li><a href="ownerviewfiles.jsp">View Files</a></li>
       <li><a href="viewencfiles.jsp">View Split Data</a></li>
        <li class="active"><a href="viewreq.jsp">View Request</a></li>
        <li><a href="logout.jsp">logout</a></li>
      </ul>
    </div><br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div id="featured_slide">
  <div class="wrapper">
    <div class="featured_content">
      <ul id="accordion">
        <li class="current">
            
            
            
            <br><br><br><br>
          

<% 
 HttpSession ses = request.getSession(true);
                String user = ses.getAttribute("user").toString();
                
try{ 
	
	Connection con=Dbconnection.getConnection();        
	PreparedStatement pst=con.prepareStatement("select * from request where owner='"+user+"' ");   
	ResultSet rs=pst.executeQuery();
       
        

%>
        
        <center>   <table style="width:80%" border="5">
         
  <tr>

        <th><font color="red">File Name</font> </th>
        <th><font color="red">Part 1</font></th>
        <th><font color="red">Part 2</font></th>
        <th><font color="red">Part 3</font></th>
      
        
         
 </tr>

<%
       
	while(rs.next()){
            %><tr><th><%=rs.getString(1)%></th>
                        
                <th><%=rs.getString("first")%></th>
                 <th><%=rs.getString("second")%></th>
                  <th><%=rs.getString("third")%></th>
                
                
        </tr>
        
        
      <%  }
        
        %> </table>

<% }
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
     
         </center></div>
        
         </li>
      
       
          
        
      </ul>
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->

<!-- ####################################################################################################### -->
<div id="container">
  <div class="wrapper">
    <div id="content">
      <h2>About This </h2>
      <p>THE world recently witnessed a massive surveillance
program aimed at breaking users? privacy.
Perpetrators were not hindered</a>.</p>
      <p>by the various security
measures deployed within the targeted services .
For instance, although these services relied on encryption
mechanisms to guarantee data confidentiality</p>
      <p>the
necessary keying material was acquired by means of
back doors, bribe, or coercion..</p>
      
    </div>
    <div id="column">
      <div class="holder">
        <h2>Know More..!</h2>
        <ul id="latestnews">
          <li> <img class="imgl" src="img/cloud.jpg" alt="" />
            <p>The encryption key is exposed and only the viable
means to guarantee confidentiality is to limit the adversary
access to the ciphertext.</p>
          </li>
        </ul>
      </div>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->

<!-- ####################################################################################################### -->
<div id="copyright">
  <div class="wrapper">
    
    <p class="lf">Developed by Team-12</p> <br class="clear" />
  </div>
</div>
</body>
</html>