<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/main.css">
<link rel="stylesheet" href="/resources/css/login/comaddsign.css">
<script src="/resources/js/nav.js"></script>
<script src="/resources/js/login/comaddsign.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div>
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
				<div>나의 공고</div>
				<table border="1" id="table">
					<thead>
						<tr>
							<th>공고번호</th>
							<th>공고명</th>
							<th>게시일</th>
							<th>게시자</th>
							<th>상태</th>
							<th>변경</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${work.size() < 1}">
							<tr>
								<td colspan="6">공고가 없습니다</td>
							</tr>
						</c:if>

						<c:forEach items="${work}" var="list">
							<tr>
								<td>${list.workNum}</td>
								<td>${list.workName}</td>
								<td>${list.uploadDate}</td>
								<td>${list.uploadName}</td>
								<td><c:if test="${list.situation=='계약완료'}">
									<a href="/contract/view/${list.workNum}">${list.situation}</a>
								</c:if>
								<c:if test="${list.situation!='계약완료'}">
									${list.situation}
								</c:if></td>
								<td><button type="button" class="add" data-id="${list.workNum}">변경</button>|
									<button type="button" class="cancel" data-id="${list.workNum}">
										삭제</button></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
				<div>직원</div>
				<table border="1" id="table">
					<thead>
						<tr>
							<th>아이디</th>
							<th>변경</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${work.size() < 1}">
							<tr>
								<td colspan="2">공고가 없습니다</td>
							</tr>
						</c:if>

						<c:forEach items="${signcom}" var="list">
							<tr>
								<td>${list.id}</td>
								<td>
									<button type="button" class="cancel" data-id="${list.id}">
										삭제</button></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>
			<div class="footer"></div>
		</div>
	</div>
	</div>
</body>
</html>