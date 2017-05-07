package std;

import javax.servlet.*;
import java.sql.*;
import java.io.*;

public class updateStudentServlet extends GenericServlet
{
    @Override
    public void service(ServletRequest req,ServletResponse res) throws ServletException,IOException
    {   
        PrintWriter out=res.getWriter();
        res.setContentType("text/html");
        String roll=req.getParameter("roll");
        String name=req.getParameter("name");
        String course=req.getParameter("course");
        Float fees=Float.parseFloat(req.getParameter("fees"));
        String sql="update student set name=?, course=?, fees=? where roll=?";
        
        try
        {
        Class.forName("com.mysql.jdbc.Driver"); 
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","apurv","apurv")) {
                PreparedStatement ps=con.prepareStatement(sql);
                ps.setString(1, name);
                ps.setString(2, course);
                ps.setFloat(3, fees);
                ps.setString(4,roll);
                ps.executeUpdate();
            }
        }
        catch(ClassNotFoundException | SQLException ex)
        {
          System.out.println("error");  
        }
    }
}    