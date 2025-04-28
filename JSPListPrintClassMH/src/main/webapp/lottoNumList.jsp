<%-- 
	스크립틀릿과 표현식을 이용해 로또 당첨 번호 출력
	table 태그를 사용하지 말 것 
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jspstudy.ch03.vo.*,java.util.*" %>

<%-- <% 
ArrayList<LottoNum> lottoList = new ArrayList<>();

LottoNum lotto = new LottoNum("907회","/images/lotto_img/ball_21.png",
"/images/lotto_img/ball_27.png","/images/lotto_img/ball_29.png",
"/images/lotto_img/ball_38.png","/images/lotto_img/ball_40.png",
"/images/lotto_img/ball_44.png","/images/lotto_img/ball_37.png");
lottoList.add(lotto);
    %> --%>

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
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립틀릿과 표현식을 이용해 로또 당첨 번호 리스트 출력</title>

<style>
	ul{
	list-style-type:none;}


</style>
</head>
<body>	

	<h2>로또 당첨 번호 리스트</h2>
	<%
		for (LottoNum lottonum : lottoList){
	%>
		<ul>
			<li><%=lottonum.getTimes()+"&nbsp"+lottonum.getNum1()+"&nbsp"+
					lottonum.getNum2()+"&nbsp"+lottonum.getNum3()+"&nbsp"+
					lottonum.getNum4()+"&nbsp"+lottonum.getNum5()+"&nbsp"+
					lottonum.getNum6()+" + 보너스 번호 "+
					lottonum.getBonusNum()
			%></li>
			
		
		
		
		</ul>
	<%
		}
	%>



</body>
</html>