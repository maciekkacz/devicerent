<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, pl.javastart.jdbc.data.City" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Wszystkie miasta</title>
</head>
<body>
	<h2>Lista miast:</h2>
	<table style="width:50%" border="1">
	<tr>
		<th>Nazwa</th>
		<th>Populacja</th>
	</tr>
	<%
		List<City> cityList = (List<City>)request.getAttribute("cityList");
		if(cityList != null)
			for(City city: cityList) {
	%>
		<tr>
			<td><%= city.getName() %></td>
			<td><%= city.getPopulation() %></td>
		</tr>
	<%
			}
	%>
	</table>
</body>
</html>