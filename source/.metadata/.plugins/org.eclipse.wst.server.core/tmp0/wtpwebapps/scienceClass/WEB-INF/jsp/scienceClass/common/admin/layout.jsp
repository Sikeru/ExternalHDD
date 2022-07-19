<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/scienceClass/admin/admin.css'/>">

</head>
<body>
<body style="overflow-x: hidden">
	<div id="wrap">
		<header>
			<tiles:insertAttribute name="header" />
		</header>
		
		<div id="container">
			<tiles:insertAttribute name="side" />
            <tiles:insertAttribute name="body" />
		</div>
		
		<footer>
			<tiles:insertAttribute name="footer" />
		</footer>
	</div>
</body>
</html>