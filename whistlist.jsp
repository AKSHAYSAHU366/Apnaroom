<%@ page import="java.sql.*"%>
<%

try
{
    String userId= request.getParameter("user_id");
    String  roomId= request.getParameter("roomId");


    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/apnaroom","root","");
    PreparedStatement pst = conn.prepareStatement("INSERT INTO `whistlist` (`whistlist_id`, `user_id`,`room_id`) VALUES (default,?, ?)");
    pst.setString(1,userId);
    pst.setString(2,roomId);
   
  
    int status = pst.executeUpdate();
    if(status!=0)
    {
      out.println("Success added");
    }
    else
    {
      out.println("NOT Successful");
    }
}
catch(Exception e)
{
      out.println("Exception :- "+e);
}

%>