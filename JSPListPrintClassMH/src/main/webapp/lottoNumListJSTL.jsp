<%-- 
	EL과 JSTL을 이용해 로또 당첨 번호 리스트 출력
	table 태그를 사용하지 말 것  
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.jspstudy.ch03.vo.*, java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
ArrayList<LottoNum>lottoList = new ArrayList<>();

LottoNum lotto = new LottoNum("907회",21,27,29,38,40,44,37);
lottoList.add(lotto);

lotto =new LottoNum("908회",3,16,21,22,23,44,30);
lottoList.add(lotto);

lotto = new LottoNum("909회",7,24,29,30,34,34,33);
lottoList.add(lotto);

lotto = new LottoNum("910회",1,11,17,27,35,39,31);
lottoList.add(lotto);

lotto = new LottoNum("911회",4,5,12,14,32,42,35);
lottoList.add(lotto);

lotto = new LottoNum("912회",5,8,18,21,22,38,10);
lottoList.add(lotto);

lotto = new LottoNum("913회",6,14,16,21,27,37,40);
lottoList.add(lotto);

lotto = new LottoNum("914회",16,19,24,33,42,44,27);
lottoList.add(lotto);

lotto = new LottoNum("915회",2,6,11,13,22,37,14);
lottoList.add(lotto);

lotto = new LottoNum("916회",9,21,22,32,35,36,17);
lottoList.add(lotto);

request.setAttribute("lottoList", lottoList);

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL과 JSTL을 이용해 로또 당첨 번호 리스트 출력</title>

<style>
	ul{list-style-type: none;}



</style>

</head>
<body>	

<h2>로또 당첨 번호 리스트</h2>
	<c:forEach var="lotto" items="${lottoList }" >
	<ul>
		<li>${lotto.times } ${lotto.num1 } ${lotto.num2 } 
		${lotto.num3 } ${lotto.num4 } ${lotto.num5 } 
		${lotto.num6 } +보너스 번호 ${lotto.bonusNum }</li>
	
	
	
	</ul>
	</c:forEach>

</body>
</html>