<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="test.TestDAO"%><!-- 사용자 라이브러리 -->
<%@ page import="test.Test"%><!-- 사용자 라이브러리 -->
<%@ page import="java.io.PrintWriter"%>
<!-- 자바에서 자바스크립트 사용 -->
<%@ page import="java.util.ArrayList"%>
<!-- 자바에서 자바스크립트 사용 -->
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>자유게시판</title>
</head>
<body>



	<header class="header">

		


	</header>

	<section>
	
		<div class="container">
			<div class="col-lg-12">
				<div class="jumbotron" style="margin-top: 20px; padding-top: 30px">
					<form method="post" action="./writeAction.jsp">
						<h2 style="text-align: center">글쓰기 양식</h2>
						<div class="form-group">
							<input type="text" placeholder="회원넘버" class="form-control"
								name="id">
						</div>
						<div class="form-group">
							<input type="text" placeholder="작성자 이름을 입력하세요" class="form-control"
								name="guestNAme">
						</div>
						<div class="form-group">
							<input type="text" placeholder="비밀번호를 입력하세요" class="form-control"
								name="pass_word">
						</div>
						<div class="form-group">
							<input type="text" placeholder="메세지를 입력하세요" class="form-control"
								name="message">
						</div>
						
						<input type="submit" value="등록완료"
							class="btn btn-primary form-control">
					</form>
				</div>
			</div>
		</div>
	</section>



	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"></script>
</body>
</html>