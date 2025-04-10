package com.jspstudy.ch02.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/today")
public class TodayServlet extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws IOException, ServletException {
		
		/* 날짜 데이터를 다루기 위해서 Calendar 객체를 생성
		 * 아래는 시스템의 현재 날짜와 시간 정보를 가진 Calendar 객체가 생성된다.
		 **/
		Calendar today = Calendar.getInstance();
		
		/* 웹 브라우저에 응답할 문서의 형식과 문자 셋 지정
		 * 문서의 형식과 문자 셋을 잘못지정하면 한글과 같은 문자는 깨져서 표시된다.
		 * 응답 객체의 문서 형식과 문자 셋은 응답 객체의 스트림에 접근하기 전에 설정해야 
		 * 제대로 동작한다. 만약 응답 객체의 스트림에 접근한 후에 응답 객체의 문서 형식과
		 * 문자 셋을 지정하면 영문, 숫자 등은 제대로 표시되지만 한글은 깨져서 표시된다.    
		 **/
		response.setContentType("text/html; charset=utf-8"); 
		
		// 웹 브라우저로 응답 결과를 보내기 위해 응답 객체를 통해 스트림객체를 구한다.
		PrintWriter out = response.getWriter();
		
		/* 다음과 같이 응답 객체에 연결된 스트림의 출력 메소드를 이용해 HTML 문서 형식에
		 * 맞게 내용을 작성하면 이 데이터가 브라우저로 전달되어 브라우저 화면에 표시된다. 
		 **/
		out.println("<html>");
		out.println("	<head><title>오늘의 날짜</title></head>");
		out.println("	<body>");
		out.print("			오늘은 " + today.get(Calendar.YEAR) + "년 ");
		out.print(			(today.get(Calendar.MONTH) + 1) + "월 ");
		out.print(			today.get(Calendar.DAY_OF_MONTH) + "일 입니다.");		
		out.println("	</body>");
		out.println("<html>");
		
		// 작업이 끝나면 스트림을 닫는다.
		out.close();
	}
}
