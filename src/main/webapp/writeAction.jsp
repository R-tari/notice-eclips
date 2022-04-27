<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.TestDAO" %><!-- 사용자 라이브러리 -->
<%@ page import="java.io.PrintWriter" %> <!-- 자바에서 자바스크립트 사용 -->
<% request.setCharacterEncoding("utf-8"); %><!-- 넘어온 한글자료 깨지지 않도록 -->


<!-- class를 자바빈즈 사용함, 이름 id설정한 이름 -->
<jsp:useBean id="test" class="test.Test" scope="page" />
<!-- join 페이지에서 받아온 testID Test.testID에 저장 -->
<jsp:setProperty name="test" property="id" />
<!-- join 페이지에서 받아온 testPassword Test.testPassword에 저장 -->
<jsp:setProperty name="test" property="guestNAme" />
<!-- join 페이지에서 받아온 testName Test.testName에 저장 -->
<jsp:setProperty name="test" property="pass_word" />
<!-- join 페이지에서 받아온 testGender Test.testGender에 저장 -->
<jsp:setProperty name="test" property="message" />


    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<%
		PrintWriter script = response.getWriter();
	
		
		
		
		
		
	
		
		
				TestDAO testDAO = new TestDAO();
				
				int result = testDAO.join(test.getId(),test.getGuestNAme(),test.getPass_word(),test.getMessage());
				script.println("<script>");
				
				if(result == -1){
					script.println("alert('가입실패)");
					script.println("history.back()");
				}else{
					session.setAttribute("testId",test.getId());
					script.println("alert('가입 성공')");
					
				}
				
				script.println("</script>");
			
		
		
	%>
</body>
</html>
