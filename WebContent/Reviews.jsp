<%@page import="musicx.dao.ReviewsDao"%>
<%@page import="musicx.model.Reviews"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reviews</title>
</head>
<body>
<h1>Users by </h1>
<%
	ReviewsDao rd = new ReviewsDao();
	List<Reviews> reviews = new ArrayList<Reviews>();
	reviews = rd.getAllReviews();
%>
	 <table border="2">
	 	<tr>
	 		<td>Review ID</td>
	 		<td>Username</td>
	 		<td>Track Id</td>
	 		<td>Rating</td>
	 		<td>Description</td>
	 	</tr>
	 	<% System.out.println(reviews.size()); 
	 	for(Reviews r : reviews) {%>
	 	<tr>
	 		<td><%= r.getReview_id() %></td>
	 		<td><%= r.getUsername() %></td>
	 		<td><%= r.getTrack_id() %></td>
	 		<td><%= r.getRating() %></td>
	 		<td><%= r.getDescription() %></td>
	 	</tr>
	 	<%} %>
	 </table>

</body>
</html>