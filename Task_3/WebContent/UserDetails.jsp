<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html></head>
		<% Class.forName("oracle.jdbc.driver.OracleDriver"); 
		  String ui=request.getParameter("name");
          String u=request.getParameter("id");
          String i=request.getParameter("priority");
          String j=request.getParameter("description");
          
          
         
Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "1234");
 
 
Statement statement = connection.createStatement() ;
System.out.println("Values inserted to DB successfully!");
int l= statement.executeUpdate("insert into client_description values('"+ ui +"','"+ u +"','"+ i +"','"+ j +"')");
%>

<body>
<div align="center">
<table border="1" cellpadding="5">
    <caption><h2>List of users</h2></caption>
    <tr>
        <th>name</th>
        <th>id</th>
        <th>priority</th>
        <th>description</th>
    </tr>
    <c:forEach var="user" items="${client_description.rows}">
        <tr>
            <td><c:out value="${client_description.name}" /></td>
            <td><c:out value="${client_description.id}" /></td>
            <td><c:out value="${client_description.priority}" /></td>
            <td><c:out value="${client_description.description}" /></td>
        </tr>
    </c:forEach>
</table>
</div>

</body>




</html> 