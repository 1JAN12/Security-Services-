<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <body>
        <%!
            Connection con;
            PreparedStatement st;
            ResultSet r;
            %>
            <%
                try{
                   
               
                String fn=request.getParameter("firstname");
                String ln=request.getParameter("lastname");
                String email=request.getParameter("email");
                String subject=request.getParameter("subject");
               
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con=DriverManager.getConnection("jdbc:derby://localhost:1527/datascience", "root", "1234");
                st=con.prepareStatement("insert into contactdetails(firstname,lastname,emailid,subject) values(?,?,?,?)");
                st.setString(1,fn);
                st.setString(2,ln);
                st.setString(3,email);
                st.setString(4,subject);
               
                int i=st.executeUpdate();
                if(i>0)
                {
                    out.println("<h1>your request is submitted</h1>");
                }
                }catch(Exception e)
                {
                    out.println(e.getMessage());
                }
               
                %>
               
    </body>
</html>