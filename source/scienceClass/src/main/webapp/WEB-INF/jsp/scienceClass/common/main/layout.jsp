<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="<c:url value='/css/scienceClass/main/main.css'/>">

</head>
<body>
<body style="overflow-x: hidden">
	<div id="wrap">
		<header>
			<tiles:insertAttribute name="header" />
		</header>
		<div id="mainMenu">
			<ul>
				<li><a href="#">메뉴1</a></li>
				<li><a href="#">메뉴2</a></li>
				<li><a href="#">메뉴3</a></li>
				<li><a href="#">메뉴4</a></li>
				<li><a href="#">메뉴5</a></li>
				<li><button onclick="slider()">실험용버튼</button></li>
			</ul>
		</div>
		<div id="slider">
			<ul id="movebox">
				<li id="f"><img class="img" src="" height="400px" width="100%"></li>
				<li id="s"><img class="img" src="" height="400px" width="100%"></li>
			</ul>
		</div>
		<div id="container">
            <tiles:insertAttribute name="body" />
		</div>
		<footer>
			<tiles:insertAttribute name="footer" />
		</footer>
	</div>
	
<script type="text/javascript">
	let movebox = document.getElementById("movebox");
	let f = document.getElementById("f");
	let s = document.getElementById("s");
	let img = document.getElementsByClassName("img");
	var i = 0;
	var j = 100;
	var k =150;
	var c = 0;
	var t=0;
	var imgList = [];
	var blank = 0;
	var imgindex = 2;
	
	<c:forEach var="imgList" items="${imgNameList}" varStatus="status">
		if("${imgList.REFLCT_AT}" == "Y"){
			imgList["${status.index}"-blank]="${imgList.IMAGE_FILE}"
		}else{
			blank=blank+1;
		}
	</c:forEach>

	for(var i=0; i<imgList.length; i++){
		console.log(imgList[i]);
	}
	
	if(imgList.length<2){
		img[0].src="<c:url value='/cmm/fms/getImage.do'/>?atchFileId="+imgList[0];
		img[1].src="<c:url value='/cmm/fms/getImage.do'/>?atchFileId="+imgList[0];
	}else{
		img[0].src="<c:url value='/cmm/fms/getImage.do'/>?atchFileId="+imgList[0];
		img[1].src="<c:url value='/cmm/fms/getImage.do'/>?atchFileId="+imgList[1];
	}
	
	
 	setInterval(slider, 5000);
	
 	i=0;
	function slider(){
		var slider = setInterval(move, 10);
		
		function move(){
			i=i+1;
			c=c+1;
			movebox.style.right=i+"%";
			if(c==100){
				clearInterval(slider);
				c=0;
				if(imgindex>=imgList.length){
					imgindex=0;
				}
				
				if(t==0){
					if(imgList.length>=3){
						img[0].src="<c:url value='/cmm/fms/getImage.do'/>?atchFileId="+imgList[imgindex];
						imgindex=imgindex+1;
					}
					
					f.style.left=j+"%";
					j=j+100;
					t=1;
					return;
				}
				if(t==1){
					if(imgList.length>=3){
						img[1].src="<c:url value='/cmm/fms/getImage.do'/>?atchFileId="+imgList[imgindex];
						imgindex=imgindex+1;
					}
					
					s.style.left=k+"%";
					k=k+100;
					t=0;
					return;
				}
				
			}
		}
	}
</script>
</body>


</html>