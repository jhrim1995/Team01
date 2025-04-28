<%-- 
	스크립틀릿과 표현식을 이용해 도서 리스트 출력하기
	table 태그를 사용할 것 
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page import="com.jspstudy.ch03.vo.*, java.util.*" %>

<%
	ArrayList<Book> bookList = new ArrayList<>();

	Book b = new Book("images/javawebprogramming.jpg",
			"[도서]프로젝트로 배우는 자바 웹 프로그래밍",
			"황희정 저 | 한빛아카데미 | 2014년 01월",
			"30,000원 --> 24,000원(20%할인) | 포인트 2,400원(10%지급)",
			"도착 예상일 : 지금 주문하면 오늘 도착예정 | 판매지수 : 1,980");
	bookList.add(b);
	
	b = new Book("images/jsp&servlet.jpg",
			"[도서]뇌를 자극하는 JSP & Servlet",
			"김윤명 저 | 한빛미디어 | 2010년 12월",
			"30,000원 --> 27,000원(10%할인) | 포인트 2,700원(10%지급)",
			"도착 예상일 : 지금 주문하면 오늘 도착예정 | 판매지수 : 1,023");
	bookList.add(b);
	
	b = new Book("images/headfirstjsp.jpg",
			"[도서]Head First Servlet & JSP",
			"케이시 시에라 등저/김종호 역 | 한빛미디어 | 2009년 02월",
			"32,000원 --> 25,600원(20%할인) | 포인트 2,560원(10%지급)",
			"도착 예정일 : 지금 주문하면 오늘 도착예정 | 판매지수 : 1,011");
	bookList.add(b);
	
	b = new Book("images/jsp2.3webprogramming.jpg",
			"[도서]최범균의 JSP2.3 웹프로그래밍",
			"최범균 저 | 가메출판사 | 2013년 02월",
			"25,000원 --> 22,500원(10%할인) | 포인트 2,250원(10%지급)",
			"도착 예정일 : 지금 주문하면 모레 도착예정 | 판매지수 : 2,012)");
	bookList.add(b);
	
	b = new Book("images/jsp&servlet_oracle&eclipse.jpg",
			"[도서]백견불여일타 JSP&Servlet : Oracle&Eclipse",
			"성윤정 저 | 로드북 | 2014년 07월",
			"27,000원 --> 24,300원(10%할인) | 포인트 2,430원(10%지급)",
			"도착 예정일 : 지금 주문하면 내일 도착예정 | 판매지수 : 1,095");
	bookList.add(b);


%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립틀릿과 표현식을 이용해 도서 리스트 출력</title>
<style>
	h2{
	text-align:center;
	}
	a{
	
	}
</style>
</head>
<body>
	
	<h2>도서 리스트(스크립틀릿과 표현식)</h2>
	<div>
	<table>
		<%
			for(Book book : bookList){
		%>
		<tr>
			<td><img src="<%= book.getImg()  %>"></td>
			<td><%= book.getTitle() %></td>
			<td><%= book.getAuthor() %></td>
			<td><%= book.getPrice() %>	</td>
			<td><%= book.getDelivery() %></td>
	
		</tr>
		<%
			}
		%>
		</table>
</div><br>
<div>
<a href ="#">도서 리스트</a>&nbsp;&nbsp;
<a href = "lottoNumList.jsp">로또 당첨 번호 리스트</a>
</div>
</body>
</html>