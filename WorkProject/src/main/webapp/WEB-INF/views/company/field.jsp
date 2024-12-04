<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/main.css">
<link rel="stylesheet" href="/resources/css/work/field.css">
<script type="text/javascript" src="/resources/js/work/field.js"></script>
<script src="/resources/js/nav.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com"
	crossorigin="crossorigin">
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap"
	rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="header" id="nav">
			<div class="logo">
				<a href="/work">workway</a>
			</div>
			<div class="serach_box">
				<span> <svg xmlns="http://www.w3.org/2000/svg" width="30"
						height="30" fill="currentColor" class="bi bi-search"
						viewbox="0 0 16 16">
                                    <path
							d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0" />
                                </svg>
				</span> <input type="text">
			</div>
			<c:if test="${sessionScope.mydate ==  null}">
				<div class="login">
					<a href="/login">로그인</a> | <a href="/signup">회원가입</a>
				</div>
			</c:if>
			<c:if test="${sessionScope.mydate !=  null}">
				<div class="login">
					<a href="/mypage/${sessionScope.mydate.id}">${sessionScope.mydate.id}</a>
					| <a href="/logout">로그아웃</a>
				</div>
			</c:if>
		</div>
		<div class="navbar" id="nav">
			<div class="manu">
				<span id="nemu"> <svg xmlns="http://www.w3.org/2000/svg"
						width="30" height="30" fill="currentColor" class="bi bi-list"
						viewbox="0 0 16 16">
                            <path fill-rule="evenodd"
							d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5" />
                        </svg>
				</span>
			</div>
			<div class="dropdown">
				<span> 기업 공고</span>
				<ul class="dropdown_item">
					<li><a href="/company/major">대기업 공고</a></li>
					<li><a href="/company/small">중소기업 공고</a></li>
					<li><a href="/company/area">지역별 공고</a></li>
					<li><a href="/company/field">분야별 공고</a></li>
				</ul>
			</div>
			<div class="dropdown">
				<span>개인 공고</span>
				<ul class="dropdown_item">
					<li><a href="/private/area">지역별 공고</a></li>
					<li><a href="/private/field">분야별 공고</a></li>
				</ul>
			</div>
			<div class="dropdown">
				<span>자재 발주</span>
				<ul class="dropdown_item">
					<li><a href="/order">발주 확인</a></li>
					<li><a href="/myorder">나의 발주</a></li>
				</ul>
			</div>
		</div>
		<div id="navhi">
			<span> <svg width="30" height="30" viewBox="0 0 60 60"
					id="cross">
                        <path style="fill:#030104;"
						d="M47.743,41.758L33.955,26.001l13.788-15.758c2.343-2.344,2.343-6.143,0-8.486
			c-2.345-2.343-6.144-2.342-8.486,0.001L26,16.91L12.743,1.758C10.4-0.584,6.602-0.585,4.257,1.757
			c-2.343,2.344-2.343,6.143,0,8.486l13.788,15.758L4.257,41.758c-2.343,2.343-2.343,6.142-0.001,8.485
			c2.344,2.344,6.143,2.344,8.487,0L26,35.091l13.257,15.152c2.345,2.344,6.144,2.344,8.487,0
			C50.086,47.9,50.086,44.101,47.743,41.758z" />
                    </svg>
			</span>
			<ul>
				<li><a href="/company/major">대기업 공고</a></li>
				<li><a href="/company/small">중소기업 공고</a></li>
				<li><a href="/company/area">지역별 공고</a></li>
				<li><a href="/company/field">분야별 공고</a></li>
			</ul>
			<ul>
				<li><a href="/private/area">지역별 공고</a></li>
				<li><a href="/private/field">분야별 공고</a></li>
			</ul>
			<ul>
				<li><a href="/order">발주 확인</a></li>
				<li><a href="/myorder">나의 발주</a></li>
			</ul>
		</div>
		<div class="main">
			<div id="fieldBox">
				<div id="fietitle">분야별</div>
				<div class="fiename">분야선택</div>
				<div id="typeBox">
					<div id="filedsearch">
						<input type="text" value="원하는 작업분야를 입력하세요">
					</div>
					<div class="field" data-field="기획">기획</div>
					<div class="field" data-field="마케팅">마케팅</div>
					<div class="field" data-field="회계">회계</div>
					<div class="field" data-field="인사">인사</div>
					<div class="field" data-field="총무">총무</div>
					<div class="field" data-field="IT개발">IT개발</div>
					<div class="field" data-field="디자인">디자인</div>
					<div class="field" data-field="영업">영업</div>
					<div class="field" data-field="고객상담">고객상담</div>
					<div class="field" data-field="구매">구매</div>
					<div class="field" data-field="상품기획">상품기획</div>
					<div class="field" data-field="운송">운송</div>
					<div class="field" data-field="서비스">서비스</div>
					<div class="field" data-field="생산">생산</div>
					<div class="field" data-field="건설">건설</div>
					<div class="field" data-field="의료">의료</div>
					<div class="field" data-field="교육">교육</div>
					<div class="field" data-field="미디어">미디어</div>
					<div class="field" data-field="금용">금용</div>
					<div class="field" data-field="공공">공공</div>
					<div class="field" data-field="안전">안전</div>
					<div class="field" data-field="미화">미화</div>
					<div class="field" data-field="포장">포장</div>
					<div class="field" data-field="상담">상담</div>
					<div class="field" data-field="검수">검수</div>
					<div class="field" data-field="단순작업">단순작업</div>
					<div class="field" data-field="사무업">사무업</div>
					<div class="field" data-field="미디어">미디어</div>
					<div class="field" data-field="스포츠">스포츠</div>
					<div class="field" data-field="기타">기타</div>
				</div>
				<div id="serach_box">
					<button id="submit" type="button">
						<span id="name"></span>의 작업 <br> <span id="count"></span>건확인
					</button>
				</div>
			</div>
		</div>
		<div class="title">기업 공고(WW Partners)</div>
		<div class="product_list" id="vipcomwork">
			<jsp:include page="vipcomwork.jsp"></jsp:include>
		</div>
		<div class="title">기업 공고</div>
		<div class="product_list" id="comwork">
			<jsp:include page="comwork.jsp"></jsp:include>
		</div>
		<div class="footer"></div>
	</div>
	</div>
</body>
</html>