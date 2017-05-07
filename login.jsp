<%-- 
    Document   : login
    Created on : Apr 21, 2017, 6:15:00 PM
    Author     : Apurv Chaudhary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/jquery-3.1.1.min.js" type="application/javascript" ></script>
        <script>
$(document).ready(function() {
       $("#id1").blur(function(){
           if($("#id1").val()=="")
           {
           $("#s1").html("<img src='resources/wrong.png'>field cannot be empty");
           
           }
           else
               $("#s1").html("<img src='resources/right.png'>");
       });
       $("#id2").blur(function(){
           if($("#id2").val()=="")
           {
           $("#s2").html("<img src='resources/wrong.png'>field cannot be empty");
           
           }
           else
               $("#s2").html("<img src='resources/right.png'>");
       });
       $("#id3").blur(function(){
           if($("#id3").val()=="")
           {
           $("#s3").html("<img src='resources/wrong.png'>field cannot be empty");
           }
           else
               $("#s3").html("<img src='resources/right.png'>");
       });
       $("#id4").blur(function(){
          if($("#id4").val()!==$("#id3").val())
          {
           $("#s4").html("<img src='resources/wrong.png'>password mismatch");   
          }
          else
              $("#s4").html("<img src='resources/right.png'>");            
       });
        $("#id5").blur(function(){
           if($("#id5").val()=="")
           {
           $("#s5").html("<img src='resources/wrong.png'>field cannot be empty");
           }
           else
               $("#s5").html("<img src='resources/right.png'>");
       });
        $("#id6").blur(function(){
           if($("#id6").val()=="")
           {
           $("#s6").html("<img src='resources/wrong.png'>field cannot be empty");
           }
           else
               $("#s6").html("<img src='resources/right.png'>");
       
       if(($("#id1").val()!=="") && ($("#id2").val()!=="") && ($("#id3").val()!=="") && ($("#id4").val()!=="") && ($("#id5").val()!=="") && ($("#id6").val()!==""))
           $(':input[type="submit"]').prop('disabled', false);
       else
           $(':input[type="submit"]').prop('disabled', true);
       });
});

        </script>
        <title>JSP Page</title>
    </head>
    
    <body>
        <a href="verify.jsp">login</a><br/>
        <form action="loginservlet" method="post">
            <table align="center">
                <tr>
                    <td>first name</td>
                    <td><input type="text" id="id1" name="fname"><span id="s1"></span></td>
                </tr>
                 <tr>
                    <td>last name</td>
                    <td><input type="text" id="id2" name="lname"><span id="s2"></span></td>
                </tr>
                <tr>
                    <td>password</td>
                    <td><input type="password" id="id3" name="password"><span id="s3"></span></td>
                </tr>
                 <tr>
                    <td>confirm password</td>
                    <td><input type="password" id="id4" name="con"><span id="s4"></span></td>
                </tr>
                 <tr>
                    <td>phone</td>
                    <td><input type="text" id="id5" name="phone"><span id="s5"></span></td>
                </tr>
                 <tr>
                    <td>address</td>
                    <td><textarea rows="5" cols="10" id="id6" name="address"></textarea><span id="s6"></span></td>
                </tr>
                <tr>
                    <td><input type="submit" value="submit" id="id7" name="btn" disabled="true"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
