<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
	<div id="board">
	<p>메인화면이미지등록창
		<form action="${contextPath}/admin/sliderAdd.do" method="post">
			<table>
				<tr>
					<td>이미지 명</td>
					<td><input name="imageNm" type="text"></td>
				</tr>
				<tr>
					<td>이미지</td>
					<td><input name="image" type="file"></td>
				</tr>
				<tr>
					<td>이미지 설명</td>
					<td><input name="imageDc" type="text"></td>
				</tr>
				<tr>
					<td>이미지 반영여부</td>
					<td>
						<select name="reflctAt">
							<option name="Y">Y</option>
							<option name="N">N</option>
						</select>
					</td>
				</tr>
			</table>
		</form>
			<input type="submit" value="저장">
			<input type="button" value="목록">
	</div>
	
	<script type="text/javascript">
		/* var varFrom = document.getElementById("mainImage");
		varFrom.action="<c:url value='${contextPath}/egovframework-all-in-one/admin/sliderAdd.do'/>" */
		
		function sliderInsert(){
			if(confirm("저장하시겠습니까?")){
				if(!validateMainImage(varFrom)){
					console.log('이거 실행되는건가?');
					return;
				}else{
					
				}
			}
		}
	</script>
</body>
</html>