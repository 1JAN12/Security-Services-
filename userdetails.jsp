
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
                   
               
               
                String user=request.getParameter("username");
                String location=request.getParameter("location");
                String contactnum=request.getParameter("contactnum");
                String gender=request.getParameter("gender");
                
                                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con=DriverManager.getConnection("jdbc:derby://localhost:1527/datascience", "root", "1234");
                st=con.prepareStatement("insert into userdetails(username,location,contactno,gender) values(?,?,?,?)");
                st.setString(1,user);
                st.setString(2,location);
                st.setString(3,contactnum);
                st.setString(4,gender);
               
                
                int i=st.executeUpdate();
                if(i>0)
                {
%>
                    <jsp:forward page="search.html"/>
<%
                }
                }catch(Exception e)
                {
                    out.println(e.getMessage());
                }
               
                %>
               
    </body>
</html>