<%-- 
    Document   : verify
    Created on : Apr 21, 2017, 7:25:32 PM
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
        <form action="verifyservlet1" method="post">
        <table align="center">
            <tr>
                <td>name</td>
                <td><input type="text" id="id1" name="name"></td>
            </tr>
            <tr>
                <td>password</td>
                <td><input type="text" id="id2" name="password"></td>
            </tr>
            <tr>
                <td><input type="submit" value="login" id="id1" name="txt"></td>
            </tr>
        </table>
        </form>
    </body>
</html>
