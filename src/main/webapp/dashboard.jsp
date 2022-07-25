<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<style>
	input {
		margin: 10px;
	}
</style>
<link rel="stylesheet" href="styles.css" />
</head>
<body>
	<h2>Welcome ${username}</h2>
	<div class="logout">
	<form style="display:inline;" action="adminLogout">
		<input type="submit" value="Logout"/> 
	</form>
	</div>
	<h2>Add new Flight</h2>
	<div class="addflight">
	<form action="addFlight" method="post">
		<label for="fname">Flight name: </label><br/>
		<input type="text" id="fname" name="fname" placeholder="Air India 001"/><br/>
		<label for="halts">Halts: </label><br/>
		<input type="text" id="halts" name="halts"/><br/>
		<label for="discount">Discount: </label><br/>
		<input type="text" id="discount" name="discount" placeholder="10"/><br/>
		<label for="startTime">Start Time: </label>
		<input type="text" id="startTime" name="startTime" placeholder="07:15:00"/>
		<label for="endTime">End Time: </label>
		<input type="text" id="endTime" name="endTime" placeholder="07:30:00"/><br/>
		<input type="submit" value="Add"/> 
	</form>
	</div>
	<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	<c:choose>
		<c:when test="${fn:length(flights) > 0}">
			<h2>List of registered flight routes</h2>
			<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>Flight</th>
					<th>Halts</th>
					<th>Discount</th>
					<th>From</th>
					<th>To</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${flights}" var="f" >
				<tr>
					<td>${f.fid}</td>
					<td>${f.fname}</td>
					<td>${f.halts}</td>
					<td>${f.discount} %</td>
					<td>${f.startTime}</td>
					<td>${f.endTime}</td>
				</tr>
				</c:forEach>
			</tbody>
			</table>
		</c:when>
		<c:otherwise>
			<p>No flights found</p>
		</c:otherwise>
	</c:choose>
</body>
</html>