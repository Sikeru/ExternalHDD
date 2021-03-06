<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Random" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
	
	let f = document.createElement('form');
	let obj = [];
	
	for(var i=0; i<7; i++){
		obj[i]=document.createElement('input');
		obj[i].setAttribute('type', 'text');
		obj[i].setAttribute('name', 'num'+(i+1));
	}
		
	var lottoArr = [];
	var deflotto = [];
	var bunusnum = 0;
	
	let lottoNum = document.getElementsByClassName("lottoNum");
	
	function lotto(){
		lottoSetup();
		lottoSelect();
		range();
		
		console.log(bunusnum);
			for(var i = 0; i<6; i++){
			obj[i].setAttribute('value', lottoArr[i]);
			f.appendChild(obj[i]);
		}
		obj[6].setAttribute('value', bunusnum);
		f.appendChild(obj[6]);
		
		f.setAttribute('method', 'post');
		f.setAttribute('action', "<c:url value = '/admin/lottoAdd.do'/>");
		document.body.appendChild(f);
		f.submit();
		
		for(var i=0; i<6; i++){
			lottoNum[i].value=lottoArr[i];
		};
		lottoNum[6].value=bunusnum;
	}
	
	function lottoSetup() {
		for(var i = 0; i<45; i++){
			deflotto[i]=i+1;
		}
	};
	
	function lottoSelect(){
		for(var i = 0; i<6; i++){
			var ran = Math.floor(Math.random()*(44-i));
			lottoArr[i]=deflotto[ran];
			deflotto.splice(ran,1);
		}
		
		ran = Math.floor(Math.random()*38);
		bunusnum = deflotto[ran];
	}
	
	function range(){
		var t=0;
		
		for(var i = 0; i<6; i++){
			for(var j = 0; j<6; j++){
				if(lottoArr[j]>lottoArr[j+1]){
					t=lottoArr[j];
					lottoArr[j]=lottoArr[j+1];
					lottoArr[j+1]=t;
				}
			}
		}
	}
		
/* 	function test(){
		$.ajax({
			type:"POST",
			url:"<c:url value = '/admin/lottoAdd.do'/>",
			data:formDate,
			success: function(){
				console.log("성공!");
			}
		})
	} */
	
	window.onload=function(){
		lotto();
	}
	</script>
</head>
	<div id="board">
	
		<input type="button" value="시작" onclick="lotto()">
		<input type="button" value="멈추기" onclick="test()">
		<input type="submit" value="테스트버튼">
			<ul>
				<li>카운트<input type="text" value="${Count}" readonly></li>
				<li>번호1<input type="text" class="lottoNum" readonly></li>
				<li>번호2<input type="text" class="lottoNum" readonly></li>
				<li>번호3<input type="text" class="lottoNum" readonly></li>
				<li>번호4<input type="text" class="lottoNum" readonly></li>
				<li>번호5<input type="text" class="lottoNum" readonly></li>
				<li>번호6<input type="text" class="lottoNum" readonly></li>
				<li>보너스번호<input type="text" class="lottoNum" readonly></li>
			</ul>
	</div>
	<div id="test">
	
	</div>
</body>
</html>