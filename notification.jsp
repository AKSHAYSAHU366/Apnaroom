<%@ page import="java.sql.*"%>
<%

try
{
    String customer_name = request.getParameter("customer_name");
    String customer_contact = request.getParameter("contact");
    String customer_email = request.getParameter("email_id");
    String owner_id = request.getParameter("owner_id");
    String customer_id = request.getParameter("customer_id");

    String info = customer_name + "\n" + "Wants to Visit at Your Room." +"\n"+ "For more details Please Contact." + customer_contact + " , " + customer_email;

    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/apnaroom","root","");
    PreparedStatement pst = conn.prepareStatement("INSERT INTO `notification` (`message_id`, `owner_id`,`customer_id`, `message`) VALUES (default,?, ?, ?)");
    pst.setString(1,owner_id);
    pst.setString(2,customer_id);
    pst.setString(3,info);
  
    int status = pst.executeUpdate();
    if(status!=0)
    {
      out.println("Success");
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
