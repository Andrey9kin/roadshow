<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.css" rel="stylesheet">
<title>Roadshow</title>
</head>
<body>

	<form method="POST" action="Calculator">
		<input type="text" name="value"/>
        <button class="btn" type="submit" value="load">load</button>
        <button class="btn" type="submit" name="store">store</button>
		<button class="btn" type="submit" name="plus">+</button>
		<button class="btn"  type="submit" name="minus">-</button>
        <button class="btn" type="submit" name="divide">/</button>
        <button class="btn" type="submit" name="multiply">*</button>
		<br>
		<input type="text" name="result" readonly="readonly" value="<%if(request.getAttribute("value") != null){out.print(request.getAttribute("value"));} %>">
	</form>
	<br>
</body>
</html>