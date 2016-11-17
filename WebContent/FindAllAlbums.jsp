<%@page import="musicx.dao.AlbumsDao"%>
<%@page import="musicx.model.Albums"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Albums</title>
</head>
<body>
<h1>Albums Listing </h1>
<%
	AlbumsDao albumsDao = AlbumsDao.getInstance();
	List<Albums> albums = new ArrayList<Albums>();
	albums = albumsDao.getAllAlbums();
%>
	 <table border="2">
	 	<tr>
	 		<td>ID</td>
	 		<td>Title</td>
	 		<td>URL</td>
	 	</tr>
	 	<% System.out.println(albums.size()); 
	 	for(Albums album : albums) {%>
	 	<tr>
	 		<td><%= album.getAlbum_id() %></td>
	 		<td><%= album.getAlbum_title() %></td>
	 		<td><%= album.getAlbum_url() %></td>
	 	</tr>
	 	<%} %>
	 </table>

</body>
</html>