package std;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class viewStudentServlet extends GenericServlet
{
    
    public void service(ServletRequest req,ServletResponse res) throws ServletException,IOException
    {
        PrintWriter out=res.getWriter();
        res.setContentType("text/html");
        String q="select * from student";
        try
        {
          Class.forName("com.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","apurv","apurv")) {
                PreparedStatement ps=con.prepareStatement(q);
               ResultSet rs=ps.executeQuery();
                out.print("<table align='center' width='50%'>");
                out.print("<tr><th>rollno</th><th>name</th><th>course</th><th>fees</th></tr>");
                while(rs.next())
                {
                    out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"
                            +rs.getString(3)+"</td><td>"+rs.getFloat(4)+"</td><td><a href='edit.jsp?rollno="+rs.getString(1)+"'>edit</a></td><td><a href='delete.jsp?rollno="+rs.getString(1)+"'>delete</a></td></tr>");
                }
                 out.print("</table>");
            }
        }
        catch(Exception ex)
        {
            out.println(ex.getMessage());
        }
    }
}    