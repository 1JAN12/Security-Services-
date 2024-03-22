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
                   
               
                int crimeid=Integer.parseInt(request.getParameter("crimeid"));
                String crimetype=request.getParameter("crimetype");
                String celltype=request.getParameter("celltype");
                String location=request.getParameter("location");
                String contactpersonname=request.getParameter("contactpersonname");
                String num=request.getParameter("contactnum");
                String timing=request.getParameter("contact_timing");
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con=DriverManager.getConnection("jdbc:derby://localhost:1527/datascience", "root", "1234");
                st=con.prepareStatement("insert into policedetails(crimeid,crimetype,celltype,location,contactpersonname,contactno,contacttiming) values(?,?,?,?,?,?,?)");
                st.setInt(1,crimeid);
                st.setString(2,crimetype);
                st.setString(3,celltype);
                st.setString(4,location);
                st.setString(5,contactpersonname);
                st.setString(6,num);
                st.setString(7,timing);
                int i=st.executeUpdate();
                if(i>0)
                {
                    out.println("value inserted");
                }
                }catch(Exception e)
                {
                    out.println(e.getMessage());
                }
               
                %>
               
    </body>
</html>