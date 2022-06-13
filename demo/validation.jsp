<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page language="java" import="java.sql.*" %>
    <%@ page import="java.io.*" %>
    <%@ page import="java.util.*" %>
<html>
	<body>
		<%
		String username=request.getParameter("username");
		String password=request.getParameter("password");

    if(username.equals("sumit") && password.equals("sumit")){

			session.setAttribute("username", username);
			response.sendRedirect("main_room_show.jsp");

		}
    else
    {
		 response.sendRedirect("main_room_show.jsp");
		}
		%>
	</body>
</html>
