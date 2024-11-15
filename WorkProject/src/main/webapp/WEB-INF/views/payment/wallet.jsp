<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"><link rel="stylesheet" href="/resources/css/main.css">
<link rel="stylesheet" href="/resources/css/login/payment.css">
<title>Insert title here</title>
</head>
<body>
	<div id="title">무통장 결제</div>
        <div>은행</div>
        <select name="" id="bank">
            <option value="nh">농협</option>
            <option value="ibk">ibk기업은행</option>
            <option value="sin">신한은행</option>
            <option value="dg">대구은행</option>
        </select>
        <div>계좌번호</div>
        <div><input type="number"></div>
        <div>예금주</div>
        <div><input type="text"></div>
        <div id="pay">결제하기</div>
</body>
</html>