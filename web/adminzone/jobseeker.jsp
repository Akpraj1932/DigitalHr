<%-- 
    Document   : adminhome
    Created on : Aug 8, 2020, 10:52:38 AM
    Author     : Brijesh
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Connect.DbManager"%>
<%
    if(session.getAttribute("userid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/adminstyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body bgcolor="green">
        <div id="outer">
            <div id="header">
                <div id="logo">
                    <img src="images/logo.png" width="150" height="150"/>
                </div>
                <div id="title">
                    Welcome to admin zone.
                </div>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="adminhome.jsp">Home</a></li>
                    <li><a href="employee.jsp">Employee</a></li>
                    <li><a href="jobseeker.jsp">Job Seeker</a></li>
                    <li><a href="enquirymgmt.jsp">Enquiry</a></li>
                    <li><a href="changepwd.jsp">Change Password</a></li>
                    <li><a href="managecity.jsp">City</a></li>
                    <li><a href="managequalification.jsp">Qualification</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div>
            <div id="main">
                <h1 style="color:blue;text-align:center;">
                    Manage Job Seeker
                </h1>
                <div style="overflow-x:auto;white-space:nowrap;width:90%;margin:0 auto;">
                <table border="1" style="width:90%;margin:0 auto;">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Address</th>
                        <th>City</th>
                        <th>Contact No</th>
                        <th>Email Address</th>
                        <th>Qualification</th>
                        <th>Experience</th>
                        <th>Company Name</th>
                        <th>Key Skills</th>
                        <th>Delete</th>
                    </tr>
                    <%
                        DbManager db=new DbManager();
                        String query="select * from jobseeker";
                        ResultSet rs=db.selectData(query);
                        while(rs.next())
                        {       
                    %>
                    <tr>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(6)%></td>
                        <td><%=rs.getString(7)%></td>
                        <td><%=rs.getString(8)%></td>
                        <td><%=rs.getString(9)%></td>
                        <td><%=rs.getString(10)%></td>
                        <td><%=rs.getString(11)%></td>
                        <td><a href="admincode/deletejobseeker.jsp?emailaddress=<%=rs.getString(6) %>">Delete</a></td>
                    </tr>                    
                     <% } %>
                </table>
                </div>
            </div>
            <div id="footer">
                <div id="lfooter">
                    Copyright &copy; to Digital HR
                </div>
                <div id="rfooter">
                    Developed By: Brijesh Mishra
                </div>
            </div>
        </div>
    </body>
</html>
<% } %>