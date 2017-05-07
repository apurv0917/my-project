package a1;

import java.sql.*;
import javax.servlet.*;
import java.io.*;

public class verifyservlet1 extends GenericServlet
{
   @Override
   public void service(ServletRequest req,ServletResponse res) throws ServletException,IOException {
   String sql="select * from student";
   String name=req.getParameter("name");
   String password=req.getParameter("password");
   PrintWriter out=res.getWriter();
   int f=0;
  
   try{
    DriverManager.registerDriver(new com.mysql.jdbc.Driver());
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","apurv","apurv");
    PreparedStatement ps=con.prepareStatement(sql);
    ResultSet rs=ps.executeQuery();
    while(rs.next())
    {
        if((rs.getString(2).equals(name)) && (rs.getString(5).equals(password)))
        {
            f=1;
            break;
        }
    }
    
      if(f==1){
          out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3));
          out.print("verified");
      }
      else
      {
          out.print("not verified");
      }
      con.close();
   }
   catch(SQLException ex){
   System.out.println("error");
     }
  
   }
}