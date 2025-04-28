<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
	JSP 표준 태그 라이브러리(JSTL)를 사용하기 위한 taglib 지시자
	http://jakarta.apache.org, http://tomcat.apache.org 에서
	다운로드 하여 WEB-INF/lib 폴더에 추가해야 표준 태그를 사용할 수 있다. 
	JSTL의 코어 라이브러리는 말 그대로 JSTL의 가장 핵심적인 기능을 제공하는
	라이브러리로 프로그래밍 언어에서 일반적으로 제공하고 있는 변수 선언, 조건문,
	반복문에 해당하는 태그를 지원한다. 또한 익셉션, URL 저장, 데이터 출력과 관련된
	태그와 다른 JSP 페이지 호출(import, redirect)과 관련된 태그를 지원한다.	   
 --%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>게시글 리스트</title>
    <link href="bootstrap/bootstrap.min.css" rel="stylesheet" >    
  </head>
  <body>
  	<div class="container">
  		<%-- 
  			여러 페이지에 걸쳐서 중복되는 내용을 별도의 JSP 페이지로 만들고 include 지시자를
  			이용해 현재 JSP 페이지에 포함 시킬 수 있다. include 지시자를 이용해 외부의 JSP
  			페이지를 포함 시키면 컴파일 타임에 현재 JSP 페이지에 하나로 합쳐져서 컴파일 된다.
  			중복되는 내용을 별도의 JSP 페이지로 만드는 것을 페이지 모듈화라고 한다.
  		--%>  	
		<!-- header  -->
		<%@ include file="../pages/header.jsp" %>
  		<!-- content -->
  		<div class="row my-5 text-center">
  			<div class="col">
  				<h2 class="fs-3 fw-bold">게시글 리스트</h2>
  			</div>
  		</div>  		
		<form name="searchForm" id="searchForm" action="#" 
			class="row justify-content-center my-3">
			<div class="col-auto">
				<select name="type" class="form-select">
					<option value="title">제목</option>
					<option value="writer">작성자</option>
					<option value="content">내용</option>
				</select>
			</div>
			<div class="col-4">
				<input type="text" name="keyword" class="form-control" id="keyword"/>
			</div>
			<div class="col-auto">
				<input type="submit" value="검 색" class="btn btn-primary"/>
			</div>
		</form>  		
  		<div class="row">
  			<div class="col text-end">
  				<a href="writeForm" class="btn btn-outline-success">글쓰기</a>
  			</div>
  		</div>
  		<div class="row my-3">  			
  			<div class="col">
  				<table class="table table-hover">
  					<thead>
	 					<tr class="table-dark">
							<th>NO</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody class="text-secondary">
					<%-- 
						표현언어(EL)를 사용해 내장객체의 속성에 저장할 때 사용한 속성 이름을 지정하면
						내장객체의 속성에 저장된 데이터를 읽어 올 수 있다. 스크립팅요소를 사용하는 것에
						비해 더 간단히 내장객체의 속성에 저장된 값을 읽을 수 있다.
						표현언어(EL)를 사용해 속성 이름을 지정하면 pageContext, request, session, 
						application 4개의 영역에 저장된 속성을 작은 범위에서 큰 범위 순으로 검색하여
						지정한 이름의 속성에 대한 값을 얻어 올 수 있다. 지정한 속성 이름이 존재하지 않아						
						도 NullPointerException은 발생하지 않고 다만 아무것도 출력되지 않는다.
						내장객체의 속성에 객체가 저장되어 있으면 내장객체의 속성 명과 dot 연자자(.)를 
						사용해 객체의 프로퍼티(인스턴스 변수) 값을 읽어 올 수 있다. 표현언어(EL)로 객체의
						프로퍼티를 읽기 위해서는 그 객체의 클래스에 읽어 올 프로퍼티에 대한 getter 
						메서드가 반드시 존재해야 한다. 그렇지 않으면 JasperException이 발생한다.
					--%>
  					<%-- 
						게시글이 있는 경우 게시글 수만큼 반복하면서 게시글을 출력		
					--%>	
					<c:if test="${ not empty bList }">
						<c:forEach var="b" items="${bList}">
						<tr>
							<td>${ b.no }</td>
							<%-- 
								반복문 안에서 한 행의 게시글을 출력하면서 
								게시글 상세보기로 넘어갈 수 있도록 링크를 설정 
							--%>
							<td><a href="boardDetail?no=${b.no}&pageNum=${currentPage} " 
							class="text-decoration-none link-secondary">${ b.title }</a></td>
							<td>${ b.writer }</td>
							<td><fmt:formatDate value="${ b.regDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
							<td>${ b.readCount }</td>
						</tr>
						</c:forEach>
					</c:if>
					<%-- 게시글이 없는 경우 --%>
					<c:if test="${ empty bList }">
						<tr>
							<td colspan="5" class="text-center">게시글이 존재하지 않습니다.</td>
						</tr>
					</c:if>
					</tbody>
  				</table>
  			</div>
  		</div>
  		<div class="row" >
  			<div class="col" >
	  			<nav aria-label="Page navigation example">
					  <ul class="pagination justify-content-center">
					  	<c:if test="${startPage > pageGroup}">
					    <li class="page-item"><a class="page-link"
					     href="boardList?pageNum=${startPage - pageGroup}">이전</a></li>
					    </c:if>
					    <c:forEach var="i" begin="${ startPage }" end="${ endPage }">
					    <c:if test="${ i == currentPage }">
					    <li class="page-item active" aria-current="page">
					    <span class="page-link" >${ i }</span></li>
					    </c:if>
					    <c:if test="${ i != currentPage }">
					    <li class="page-item">
					    <a class="page-link"href="boardList?pageNum=${i}">${i}</a></li>					    
					    </c:if>
					    </c:forEach>
					    <c:if test="${endPage<pageCount}">
					    <li class="page-item"><a class="page-link"
					     href="boardList?pageNum=${startPage + pageGroup}">다음</a></li>
					    </c:if>
					  </ul>
					</nav>  			
  			</div>
  		</div>
		<!-- footer  -->
		<%@ include file="../pages/footer.jsp" %>
	</div>
    <script src="bootstrap/bootstrap.bundle.min.js"></script>
  </body>
</html>