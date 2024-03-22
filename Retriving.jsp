<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <!-- <head>
        <style>
            body{
                background-image: url("https://ornasecurity.us/wp-content/uploads/2015/01/Security-Guards-vs-Computer-Surveillance-Are-They-Interchangeable-ORNA.jpg");
                background-repeat: no-repeat;
                background-position: left;
                background-attachment: fixed;
                background-size: 1530px;  
            }

        </style>

    </head>--->

    <body>
      

        <%!
            Connection con;
            PreparedStatement st;
            Statement s;
            ResultSet r;
            String problem;
        %>
        <%
            problem = request.getParameter("problem");
            //System.out.println("Problem is :"+problem);
            try {

                Class.forName("org.apache.derby.jdbc.ClientDriver");
                con = DriverManager.getConnection("jdbc:derby://localhost:1527/datascience", "root", "1234");

                //String sql="select * from policedetails where crimetype=?";
                // st = con.prepareStatement(sql);
                //System.out.println(problem);
                //st.setString(1,problem);
                s = con.createStatement();
                r = s.executeQuery("select * from policedetails where CRIMETYPE='" + problem + "'");
                //r = st.executeQuery();

                //    out.println("<h1>the below mentioned details are about the crime dealers who are available for your request</h1>");
                //r.next();
                //System.out.println("Record:"+r.getInt(1));
                while (r.next()) {
                    out.println("<html><body>");

                    out.println("<br>");
                    out.println("<br>");
                    out.println("<h1 style='text-align:center;color:red;font-size:30px'> SECURITY SERVICES</h1>");

                    out.println("<center>");
                    out.println("------POLICE DETAILS------ ");
                    out.println("<br>");
                    out.println("<br>");
                    out.println("<br>");

                    out.println("CRIME ID       : " + r.getInt(1));

                    out.println("<br>");
                    out.println("<br>");

                    out.println("CRIME TYPE     : " + r.getString(2));

                    out.println("<br>");
                    out.println("<br>");

                    out.println("CELL TYPE      : " + r.getString(3));

                    out.println("<br>");
                    out.println("<br>");

                    out.println("lOCATION       : " + r.getString(4));

                    out.println("<br>");
                    out.println("<br>");

                    out.println("CONTACT PERSON : " + r.getString(5));

                    out.println("<br>");
                    out.println("<br>");

                    out.println("CONTACT NUMBER : " + r.getString(6));

                    out.println("<br>");
                    out.println("<br>");

                    out.println("CONTACT TIMING : " + r.getString(7));

                    out.println("</center>");
                    out.println("<html><body>");

                }

            } catch (Exception e) {
                out.println("Error:" + e.getMessage());
            }
        %>
    </body>
</html>
