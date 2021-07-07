<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="menu">
<a href="<%=request.getContextPath()+"/creerClient.jsp"%>">Créer un nouveau client</a>
<a href="<%=request.getContextPath()+"/creerAdresse.jsp"%>">Créer une nouvelle adresse</a>
</div>
</body>
</html>