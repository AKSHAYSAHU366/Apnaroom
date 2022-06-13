
<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<html>
<head>
 <title>Notification</title>

</head>
<body>
 <%
   Connection conn11 = null;
   ResultSet rs11 = null;
   Statement stmt11 = null;
   Class.forName("com.mysql.jdbc.Driver").newInstance();
   conn11 = DriverManager.getConnection("jdbc:mysql://localhost:3306/apnaroom","root","");
   stmt11 = conn11.createStatement();
   String id1 = (String)session.getAttribute("user_id");
   out.print(id1);
   rs11 = stmt11.executeQuery("select * from whistlist where user_id =" + id1);

   String room_id = "";
   

  while(rs11.next())
  {
    room_id=rs11.getString("room_id");

  }
  rs11.close();
 stmt11.close();
 conn11.close();


  Connection conn22 = null;
   ResultSet rs22 = null;
   Statement stmt22 = null;
   Class.forName("com.mysql.jdbc.Driver").newInstance();
   conn22 = DriverManager.getConnection("jdbc:mysql://localhost:3306/apnaroom","root","");
   stmt22 = conn22.createStatement();
   rs22 = stmt22.executeQuery("select * from add_room where room_id =" + room_id);
   while(rs22.next())
   {
      %>
       <p> <em>Room type:</em> <%=rs22.getString("room_type")%> </p>
       <p> <em>Room rent:</em> <%=rs22.getString("room_rent")%> </p>
<%
   }
    rs22.close();
 stmt22.close();
 conn22.close();
   
 %>
 </body>
</html>