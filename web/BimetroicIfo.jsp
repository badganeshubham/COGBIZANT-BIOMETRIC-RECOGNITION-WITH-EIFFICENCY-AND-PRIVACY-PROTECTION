<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.*" %>
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
             rs=st.executeQuery("select max(id) from userreg");
             if(rs.next())
             {
                 int c=rs.getInt(1);
                 if(rs.getInt(1)==0)
            {
            n=1; 
          
            }
            else
            {
                
                n=rs.getInt(1)+1;
                
                //out.println(id3);
               
            }
                 session.setAttribute("id",n);
             }
                  }
             catch(Exception e)
                     {
                     out.println(e);
                     }

                         %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>COGNIZANT BIOMETRIC RECOGNITION WITH EFFICIENCY AND PRIVACY PROTECTION</title>
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
          <li><a href="OwnerHome.jsp" class="active"><span>Home</span></a></li>
         <li><a href="BimetroicIfo.jsp"><span>Biometric Info</span></a></li>
          <li><a href="Encrypted.jsp"><span>Encrypted</span></a></li>
            <li><a href="userrequest.jsp"><span>User Request</span></a></li>
          <li><a href="index.html"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
   
    </div>
    <div class="clr"></div>
  </div>
  <div class="body">
    <div class="body_resize">
      <div class="left">
        <h2>Welcome To Owner Page<br />
         
          <form name="login" action="UserRegAction" method="post"  enctype="multipart/form-data" onsubmit="return validate()">
        <table border="10px" cellpadding="10px" cellspacing="0px">
            <tr>
                <td><font color="blue" size="5">ID</font></td>
                <td><input type="text" name="id"  value="<%=n%>"readonly></input></td>
            </tr> 
            <tr>
                <td><font color="blue" size="5">Full Name</font></td>
                <td><input type="text" name="username" required></input></td>
            </tr> <tr>
                <td><font color="blue" size="5">Email ID</font></td>
                <td><input type="text" name="email" required></input></td>
            </tr>
            
            <tr>
                <td><font color="blue" size="5">Password</font></td>
                <td><input type="password" name="password" required ></input></td>
            </tr>
             <tr>
                <td><font color="blue" size="5">Gender</font></td>
                        <td><select  name="gender">
                                <option value="male">Male</option>
                                <option value="female">FeMale</option>
                                <option value="Others">Others</option>
                    </select></td>
            </tr>
            <tr>
                <td><font color="blue" size="5">Address</font></td>
                <td><textarea name="address" rows="5" cols="20" name="address">
                    
                    </textarea></td>
            </tr>
            <tr>
                <td><font color="blue" size="5">User Image</font></td>
                <td><input type="file" name="image" required></input></td>
            </tr>
            
            <tr>
                <td><font color="blue" size="5"><input type="submit" value="Submit"></input></td>
                <td><input type="Reset"></input></td>
            </tr>
        </table>
        </form>
      </div>
      <div class="right">
        <h2>Sidebar Menu</h2>
        <ul>
           <li><a href="OwnerHome.jsp" class="active"><span>Home</span></a></li>
          <li><a href="BimetroicIfo.jsp"><span>Biometric Info</span></a></li>
          <li><a href="Encrypted.jsp"><span>Encrypted</span></a></li>
            <li><a href="userrequest.jsp"><span>User Request</span></a></li>
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

    <div class="clr"></div>
  </div>
</div>
</body>
</html>
