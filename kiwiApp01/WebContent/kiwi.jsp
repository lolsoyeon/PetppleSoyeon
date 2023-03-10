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
<title>펫시터지원하기</title>


<style type="text/css">

	.container{font-size: 20px;}
	#orange {color: #FE5C17; font-weight: bold;}
	.panel-heading {text-align: center;}
	.d-flex .justify-content-center {text-align: center;}
	.btn {background-color: #FE5C17; font-weight: bold; color: white;}

</style>

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="<%=cp %>css/main.css">
</head>
<body>

<div class="container">
	<div class="text-center">
	내가 좋아하는일로<br>
	매월 생활비를 벌어보세요.<br><br>

	<span id="orange">
	방문 펫시터로 지원 후 합격하신다면<br> 
	방문 펫시팅과 위탁 펫시팅<br>
	둘 다 가능한 펫시터로<br>
	지원 할 수 있습니다!<br></span>
 	</div><!--.d-flex justify-content-center  -->
	
	<br><br><br><br>
	
		<div class="panel panel-default">
	    	<div class="panel-heading">펫시터 등록 프로세스 및 관리</div>
		    <div class="panel-body row">
		  
		    
		      <div class="col-sm-2 text-center"><img src="<%=cp %>/svg/hhh.svg" class="svgImg1"><br>동물을 사랑하는<br> 사람 누구나</div> 
		      <div class="col-sm-3 text-center"><img src="<%=cp %>/svg/t.svg" class="svgImg1"><br>성실한 서류 작성</div>
		      <div class="col-sm-2 text-center"><img src="<%=cp %>/svg/y.svg" class="svgImg1"><br>체계적인 등급</div>
		      <div class="col-sm-3 text-center"><img src="<%=cp %>/svg/u.svg" class="svgImg1"><br>편리한 일정관리</div>
		      <div class="col-sm-2 text-center"><img src="<%=cp %>/svg/i.svg" class="svgImg1"><br>매력적인 프로필 정보로 인기있는 펫시터 되기</div>
		    
		    
		    </div>
		 
	    
  		</div>
	<button type="submit" class="btn text-center">방문 펫시터 지원하기</button>	
	
</div><!-- .container -->
</body>
</html>