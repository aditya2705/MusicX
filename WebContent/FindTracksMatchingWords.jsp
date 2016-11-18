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

<form action="${pageContext.request.contextPath}/TracksSearchServlet" name="frmSearchTrack" method="post">
	 <table>
	<tr>
		<td>
			<input type="text" id="searchText" name="searchText">
		</td>
		<td>
			<input type="submit" name = "buttonSearchTrack" id="buttonSearchTrack" >
		</td>
	</tr>
	
	<tr>
  		<td colspan="2" align="center"><p id="errMsg" style="color:red"><%
    	if(null!=request.getAttribute("errorMessage"))
    	{
        	out.println(request.getAttribute("errorMessage"));
    	}
		%></p></td>
  	</tr>
</table>
</form>
<%
	TracksDao tracksDao = TracksDao.getInstance();
	List<Tracks> tracks = new ArrayList<Tracks>();
	if(null!=request.getAttribute("tracksResult"))
    {
		tracks = (ArrayList<Tracks>) request.getAttribute("tracksResult");  
		System.out.println(tracks.size());
    }
	
	if(tracks.size()>0){
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
	 	<%  
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
<%} %>
</body>
</html>