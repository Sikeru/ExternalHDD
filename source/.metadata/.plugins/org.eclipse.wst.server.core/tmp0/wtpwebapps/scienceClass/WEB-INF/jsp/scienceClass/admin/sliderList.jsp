<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div id="board">
		<h1>슬라이더 관리창입니다.</h1>
		<div id="btn">
			<a href="${contextPath}/egovframework-all-in-one/admin/sliderRegist.do">등록</a>
		</div>
		
		<table>
			<tr>
				<td>이미지명</td>
				<td>이미지</td>
				<td>이미지설명</td>
				<td>반영여부</td>
			</tr>
			<c:forEach var="mainImgList" items="${mainImgList}">
			<tr>
				<td><a href="#">${mainImgList.IMAGE_NM}</a></td>
				<td>${mainImgList.IMAGE}</td>
				<td>${mainImgList.IMAGE_DC}</td>
				<td>${mainImgList.REFLCT_AT}</td>
			</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>