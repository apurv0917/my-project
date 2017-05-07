
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>

<%
    String rollno=request.getParameter("rollno");
    String sql="Select * from student where roll=?";
    DriverManager.registerDriver(new com.mysql.jdbc.Driver());
    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","apurv","apurv");
    PreparedStatement ps=cn.prepareStatement(sql);
    ps.setString(1, rollno);
    ResultSet rs=ps.executeQuery();
    rs.next();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="updateStudentServlet" >
            <table align="center">
                <tr>
                    <td>roll no</td>
                    <td><input type="text" name="roll" value="<%=rollno%>" id="1d1" readonly=""></td>
                </tr>
              <tr>
                <td>name</td>
                <td><input type="text" name="name" value="<%=rs.getString(2)%>" id="id2"></td>
            </tr>
            <tr>
                <td>course</td>
                <td><input type="text" name="course" value="<%=rs.getString(3)%>" id="id3"></td>
            </tr>
            <tr>
                <td>fees</td>
                <td><input type="text" value="<%=rs.getString(4)%>" name="fees" id="id4"></td>
            </tr>
            <tr>
                <td><input type="submit" value="update" name="btn" id="id5"></td>
            </tr>
            </table>
        </form>
    </body>
</html>
