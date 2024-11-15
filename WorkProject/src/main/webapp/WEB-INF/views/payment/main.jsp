<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="title">결제방식 선택</div>
		<div class="payBox" data-type="naver">
			<img src="/resources/imgs/Naver_pay_logo.png" alt="" class="imgs" data-type="naver">
		</div>
		<div class="payBox" data-type="kakao">
			<img src="/resources/imgs/kakao_pay_logo.png" alt="" class="imgs" data-type="kakao">
		</div>
		<div class="payBox" data-type="apple">
			<img src="/resources/imgs/Apple_Pay_logo.png" alt="" class="imgs" data-type="apple">
		</div>
		<div class="payBox" data-type="card">신용/체크 카드</div>
		<div class="payBox" data-type="wallet">무통장 결제</div>
		<div class="payBox" data-type="phone">휴대폰 결제</div>
		<div id="can">취소하기</div>
</body>
</html>