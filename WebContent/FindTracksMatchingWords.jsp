<%@page import="musicx.dao.TracksDao"%>
<%@page import="musicx.model.Tracks"%>
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
<h1>Tracks Listing Based on Query "cut"</h1>
<%
	TracksDao tracksDao = TracksDao.getInstance();
	List<Tracks> tracks = new ArrayList<Tracks>();
	tracks = tracksDao.getTracksByTrackTitleQuery("cut");
%>
	 <table border="2">
	 	<tr>
	 		<td>Title</td>
	 		<td>Album</td>
	 		<td>Artist</td>
	 		<td>Genre</td>
	 		<td>Duration</td>
	 		<td>Composer</td>
	 		<td>Bit Rate</td>
	 	</tr>
	 	<% System.out.println(tracks.size()); 
	 	for(Tracks track : tracks) {%>
	 	<tr>
	 		<td><%= track.getTrack_title() %></td>
	 		<td><%= track.getAlbum_id() %></td>
	 		<td><%= track.getArtist_id() %></td>
	 		<td><%= track.getGenre_id() %></td>
	 		<td><%= track.getTrack_duration() %></td>
	 		<td><%= track.getTrack_composer() %></td>
	 		<td><%= track.getTrack_bit_rate() %></td>
	 	</tr>
	 	<%} %>
	 </table>

</body>
</html>