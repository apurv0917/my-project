package a1;
import java.sql.*;
import javax.servlet.*;
import java.io.*;

public class loginservlet extends GenericServlet
{
    
    @Override
    public void service(ServletRequest req,ServletResponse res) throws ServletException,IOException
    {
        
        String fname=req.getParameter("fname");
        String lname=req.getParameter("lname");
        String password=req.getParameter("password");
        long phone=Long.parseLong(req.getParameter("phone"));
        String address=req.getParameter("address");
        String sql="insert into student(fname,lname,phone,password,address) values(?,?,?,?,?)";
        
        try{
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library","apurv","apurv")) {
                PreparedStatement ps=con.prepareStatement(sql);
                ps.setString(1,fname);
                ps.setString(2,lname);
                ps.setLong(3,phone);
                ps.setString(4,password);
                ps.setString(5,address);
                ps.executeUpdate();
            }
        }
        catch(Exception ex)
        {
            System.out.println("error");
        }
    }
}