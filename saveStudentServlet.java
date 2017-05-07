package std;
import javax.servlet.*;
import java.io.*;
import java.sql.*;
public class saveStudentServlet extends GenericServlet
{
    @Override
    public void service(ServletRequest req,ServletResponse res) throws ServletException,IOException
    {
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
        String roll=req.getParameter("roll");
        String name=req.getParameter("name");
        String course=req.getParameter("course");
        Float fees=Float.parseFloat(req.getParameter("fees"));
        String q="insert into student values(?,?,?,?)";
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","apurv","apurv")) {
                PreparedStatement ps;
                ps = con.prepareStatement(q);
                ps.setString(1,roll);
                ps.setString(2,name);
                ps.setString(3,course);
                ps.setFloat(4,fees);
                ps.executeUpdate();
                con.close();
            }
            
        }
        catch(ClassNotFoundException | SQLException ex)
        {
            out.println(ex.getMessage());
        }
    }
}
