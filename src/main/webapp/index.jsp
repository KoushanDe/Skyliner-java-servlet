<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TravAirGo</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="styles.css" />
<style>

</style>
</head>
<body>
	<h2>Skyliner</h2>
	<h3 style="text-align:center">Search for Flights</h3>
	<div class="searchflight" style="margin-left: auto;margin-right: auto;width: 270px;">
	<form id="searchForm" action="search" style="background-color: rgba(255,255,255,0.13);position: absolute;margin-left: auto;margin-right: auto;border-radius: 10px;backdrop-filter: blur(2px);border: 2px solid rgba(255,255,255,0.1);box-shadow: 0 0 40px rgba(8,7,16,0.6);padding: 20px 35px;">
		<h3 style="text-align:center"><label for="from">From: </label></h3><br/>
		<select style="display:block;background-color:rgba(255,255,255,0.7); margin: 0 auto;" id="from" name="fromCity" required>
			<option value="" >--Please choose an option--</option>
			<c:forEach items="${cities}" var="c">
				<option value="${c.ccode}">${c.ccode} - ${c.cname}</option>
			</c:forEach>
		</select><br/>
		<h3 style="text-align:center"><label for="to">To: </label></h3><br/>
		<select style="display:block;background-color:rgba(255,255,255,0.7); margin: 0 auto; padding: 0px;" id="to" name="toCity" required>
			<option value="">--Please choose an option--</option>
			<c:forEach items="${cities}" var="c">
				<option value="${c.ccode}">${c.ccode} - ${c.cname}</option>
			</c:forEach>
		</select><br/>
		<input style="display:block; margin: 0 auto; width: 100px;height: 30px;" type="Submit" value="Search"/><br/>
	</form>
	</div>
	<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	<c:choose>
		<c:when test="${fn:length(deals) > 0}">
			<h2>Special Deals:</h2>
			<table>
			<thead>
				<tr>
					<th>S.No.</th>
					<th>Flight</th>
					<th>Discount</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="i" begin="1" end="${fn:length(deals)}" >
				<tr>
					<td>${i}</td>
					<td>${deals.get(i-1).fname}</td>
					<td>${deals.get(i-1).discount}%</td>
				</tr>
				</c:forEach>
			</tbody>
			</table>
		</c:when>
		<c:otherwise>
			<h3 style="text-align: center;">No special deals</h3>
		</c:otherwise>
	</c:choose>
	<footer>
		<h3 style="text-align: center;"><a href="admin.jsp" style = " color:#0000CD">Continue to admin login</a></h3>
	</footer>
	<script>
		$(document).ready(function () {
			$("#searchForm").on("submit", function(e) {
				if ($("#from").val() == $("#to").val()) {
					alert("Cities cannot be same");
					e.preventDefault();
				}
			});
		});
	</script>
</body>
</html>