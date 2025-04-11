<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.*"%>
<%
                         Connection con=null;
            Statement st= null;
            ResultSet rs=null;
             ResultSet rs1=null;
             ResultSet rs2=null;
            int n=0;     

             try
                  {
                      Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/biometric_identification","root","root");
             st = con.createStatement();
             rs1=st.executeQuery("select max(fileid) from request");
             if(rs1.next())
             {
                 if(rs1.getInt(1)==0)
            {
            n=1; 
          
            }
            else
            {
                
                n=rs1.getInt(1)+1;
                
                //out.println(id3);
               session.setAttribute("nn",n);
            }
             }
                  }
             catch(Exception e)
                     {
                     out.println(e);
                     }

                         %>
<%
    String id=(String)session.getAttribute("id");
    
   String username=(String)session.getAttribute("username");
   
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/biometric_identification","root","root");
        st=con.createStatement();
        rs=st.executeQuery("select * from user where username='"+username+"'");
    
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
      
      <div class="clr"></div>
    </div>
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
        <h2>Welcome User Biometric Information<br />
        
			 <%while(rs.next())
			{
				%>
                                <form action="SendRequest.jsp" method="post">
                                <center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="view2.jsp?id=<%=id%>" width="200" height="200" />  </center> 
                                                               <table cellspacing="5px" cellpadding="5px" align='center'>
                                                                    <tr><td><input type="hidden" name="fileid" value="<%=n%>" readonly></input></td></tr>
        
                                                                   <tr><td> User ID</td><td><input type="text" name="id" value="<%=rs.getString(1)%>" readonly></input></td></tr>
        
	<tr><td> UserName</td><td><input type="text" name="uname" value="<%=rs.getString(2)%>" readonly></input></td></tr>
           <tr><td>Email Id</td><td><input type="text" name="email" value="<%=rs.getString(3)%>"readonly></input></td></tr>
           
			 <%}
	}
			catch(Exception e)
			{
			out.println(e);
			}
			 %>
                                <tr><td><input type="submit" value="Send Request"></input></td></tr>
                                
			 </table>
                                </form>
         
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
        <div class="clr">
            
        </div>
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
