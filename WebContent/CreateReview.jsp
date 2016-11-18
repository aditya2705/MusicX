<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Review</title>
</head>
<body>
<h1 align="center">Create Review</h1>
<form action="${pageContext.request.contextPath}/CreateReviewServlet" name="frmCreateReview" method="post">
	<table border="0" align="center">
	 	<tr>
	 		<th align="left">Username</th>
	 		<td><input type="text" id="userName" name="userName" size="35"></td>
	 	</tr>
	 	<tr>
	 		<th align="left">Track Id</th>
	 		<td><input type="text" id="trackId" name="trackId" size="35"></td>
	 	</tr>
	 	<tr>
	 		<th align="left">Rating</th>
	 		<td><input type="text" id="rating" name="rating" maxlength="3" size="35"></td>
	 	</tr>
	 	<tr>
	 		<th align="left">Description</th>
	 		<td>
	 			<textarea id="description" name="description" rows="4" cols="26"></textarea>
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
	 	<tr>
	 		
	 	</tr>
	 	<tr>
	 	<td colspan="2" align="center">
	 		<input type="submit" value="Create Review">
	 	</td>
	 	</tr> 
	 	
	 </table>
	 </form>
</body>
</html>