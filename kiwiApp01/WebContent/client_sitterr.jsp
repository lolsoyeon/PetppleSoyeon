<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.container {font-size: 20px;}
.panel-heading {text-align: center;}
#orange {
	color: #FE5C17;
	font-weight: bold;
	font-size: 10px;
}
#profile {font-size: 17px;}
#profile_content
{
	 font-size: 17px;width: 100%; height: 130px; min-height: 130px; padding-top: 18px;
	 border: 1px solid #EBEBEB; border-radius: 5px; padding-left: 20px; padding-right: 20px; margin-top: 25px"
}
.btn {background-color: #FE5C17; font-weight: bold; color: white;}
#acc_number {font-size: 17px;}
</style>

<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="<%=cp%>css/main.css">
</head>
<body>

	<div class="container">
		<h2 style="font-size: 30px; font-weight: 600; color: #555555">
			펫시터 지원서 작성하기</h2>
		<form action="">
			<div class="panel panel-default">
				<div class="panel-heading">
					<p>펫시터 지원을 해주셔서 감사합니다 성실한 답변 부탁드립니다 : )</p>
					<span id="orange">키위는 펫시터를 지원 할 때 이 사항을 모두 입력 해 주셔야 서비스를 의뢰
						받을 수 있습니다!</span>
				</div>

				<div class="panel-body">
					<p>
						<span style="font-size: 15px">프로필 한 줄 제목</span> <span id="orange">*</span>
					</p>

					<input type="text" id="profile" name="profile" size="40"
						maxlength="50" placeholder="표시 될 프로필 제목을 입력 해 주세요."><br>
					<p>
						<span style="font-size: 15px">펫시터 소개글</span> <span id="orange">*</span>
					</p>
					<textarea id="profile_content"
						placeholder="예) 반갑습니다~~♡ 저는 대학생 큰딸과 네살 반 된 늦둥이 말티츄 아들 하나를 키우고 있는 주부입니다."></textarea>
					<p>
						<span style="font-size: 15px">예금주명</span> <span id="orange">*</span>
						<br>
						<input type="text" id="profile" name="depositor" size="40"
						maxlength="50" placeholder="수익을 입금 받을 예금주 명을 입력 해 주세요."><br>
					</p>
					<p>
						<span style="font-size: 15px">계좌번호</span> <span id="orange">*</span>
						<br>
						<input type="text" id="acc_number" name="depositor" size="40"
						maxlength="50" placeholder="수익을 입금 받을 계좌번호을 - 없이 입력 해 주세요."><br>
					</p>
				</div>
			</div>
			
			<button type="submit" class="btn text-center">제출하기</button>
		</form>
		
	</div>
</html>