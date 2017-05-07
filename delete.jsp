
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*;"%>
<% String rollno=request.getParameter("rollno");
String sql="delete from student where roll=?";
DriverManager.registerDriver(new com.mysql.jdbc.Driver());
   Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","apurv","apurv");
    PreparedStatement ps=cn.prepareStatement(sql);
    ps.setString(1,rollno);
    ps.executeUpdate();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>deleted: where roll="<%= rollno%>"</h3>
    </body>
</html>
