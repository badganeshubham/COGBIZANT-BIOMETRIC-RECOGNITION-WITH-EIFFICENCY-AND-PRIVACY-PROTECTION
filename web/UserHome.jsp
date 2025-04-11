<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%String username=(String)session.getAttribute("username");
String id=(String)session.getAttribute("id");
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>COGNIZANT BIOMETRIC RECOGNITION WITH EFFICIENCY AND PRIVACY PROTECTION</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h2><a href="index.html">COGNIZANT BIOMETRIC RECOGNITION WITH EFFICIENCY AND PRIVACY PROTECTION</a></h2>
      </div>
      <div class="menu">
        <ul>
          <li><a href="UserHome.jsp" class="active"><span>Home</span></a></li>
          <li><a href="DataRequest.jsp"><span>Data Request</span></a></li>
          <li><a href="QueryResult.jsp"><span>Query Result</span></a></li>
          <li><a href="index.html"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
    <div class="headert_text_resize"> <img src="images/text_area_img.jpg" alt="" width="395" height="396" />
      <div class="textarea">
        <h2>Biometric Identification</h2>
        <p>Biometric identification is one of the most prominent methods
for identifying an individual. All biometric traits, such as
fingerprint, iris, and retina, share the important factors of universality
(people have their own fingerprint), uniqueness (the
probability that two persons have the same fingerprint is negligible),
and permanence (biometric traits usually do not change
over time) </p>
      </div>
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
        <h2>Welcome To <%=username%>   <br />
          <span> COGNIZANT BIOMETRIC RECOGNITION WITH EFFICIENCY AND PRIVACY PROTECTION</span> </h2>
        
          <p align="justify">With the rapid growth in the development of smart devices equipped with biometric sensors, client identification system using biometric traits
are widely adopted across various applications. Among many biometric traits, fingerprint-based identification systems have been extensively
studied and deployed. However, to adopt biometric identification systems in practical applications, two main obstacles in terms of efficiency and
client privacy must be resolved simultaneously. That is, identification should be performed at an acceptable time, and only a client should have
access to his/her biometric traits, which are not revocable if leaked. Until now, multiple studies have demonstrated successful protection of client
biometric data; however, such systems lack efficiency that leads to excessive time utilization for identification. The most recently researched
scheme shows efficiency improvements but reveals client biometric traits to other entities such as biometric database server. This violates client
privacy. In this paper, we propose an efficient and privacy-preserving fingerprint identification scheme by using cloud systems. The proposed
scheme extensively exploits the computation power of a cloud so that most of the laborious computations are performed by the cloud service
provider. According to our experimental results on an Amazon EC2 cloud, the proposed scheme is faster than the existing schemes and guarantees
client privacy by exploiting symmetric homomorphic encryption. Our security analysis shows that during identification, the client fingerprint data
is not disclosed to the cloud service provider or fingerprint database server. <a href="#">Read more...</a></p>
        <h2>&nbsp;</h2>
      </div>
      <div class="right">
        <h2>Sidebar Menu</h2>
        <ul>
            <li><a href="UserHome.jsp" class="active"><span>Home</span></a></li>
          <li><a href="DataRequest.jsp"><span>Data Request</span></a></li>
          <li><a href="QueryResult.jsp"><span>Query Result</span></a></li>
          <li><a href="index.html"><span>Logout</span></a></li>
        </ul>
        
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="FBG">
    <div class="FBG_resize">
      <div class="blok">
       
    </div>
  </div>
  <div class="footer">
    
    <div class="clr"></div>
  </div>
</div>
</body>
</html>
