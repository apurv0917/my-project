<%-- 
    Document   : addStudent
    Created on : Mar 18, 2017, 5:26:15 PM
    Author     : Apurv Chaudhary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
       <form action="saveStudentServlet" method="post">
        <table align="center" >
            <tr>
                <td>Roll no.</td>
                <td><input  type="text" name="roll" id="id1"></td>
            </tr>
            <tr>
                <td>name</td>
                <td><input type="text" name="name" id="id2"></td>
            </tr>
            <tr>
                <td>course</td>
                <td><input type="text" name="course" id="id3"></td>
            </tr>
            <tr>
                <td>fees</td>
                <td><input type="text" name="fees" id="id4"></td>
            </tr>
            <tr>
                <td><input type="submit" value="submit" name="btn" id="id5"></td>
            </tr>
        </table>
       </form>
      </div> 
        <div>
            <a href="viewStudentServlet">view</a>         
        </div>
    </body>
</html>
