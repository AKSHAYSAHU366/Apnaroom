<html>
<%
String username =(String)session.getAttribute("username");
if(username!=null)
{
 response.sendRedirect("show_whistlist.jsp");
}else
{
  response.sendRedirect("login.jsp");
}
  %>
  <logic:redirect forward="show_room.jsp" paramId="roomId" paramName="roomId" />
</html>
