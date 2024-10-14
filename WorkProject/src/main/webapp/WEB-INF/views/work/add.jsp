<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="/resources/css/main.css">
<link rel="stylesheet" href="/resources/css/work/add.css">
<script src="/resources/js/nav.js"></script>
<script src="/resources/js/work/add.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="header" id="nav">
			<div class="logo"><a href="/work">workway</a></div>
			<div class="serach_box">
				<span> <svg xmlns="http://www.w3.org/2000/svg" width="30"
						height="30" fill="currentColor" class="bi bi-search"
						viewbox="0 0 16 16">
                            <path
							d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0" />
                        </svg>
				</span> <input type="text">
			</div>
			<div class="login">
				<a href="login">로그인</a> | <a href="signup">회원가입</a>
			</div>
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
			<div id="add_box">
				<div id="wwhead">
					<div><h1>작업등록</h1></div>
					<div id="wwbutton">WW Partners</div>
				</div>
				<form method="post" id="conteant" enctype="multipart/form-data">
					<div><p>작업명</p><input type="text" name="workName" oninput="updateProgress()" data-target="muge_comname" class="essential"></div>
					<div><p>작업설명</p><input type="text" name="workDetailed" oninput="updateProgress()" data-target="muge_comex" class="essential"></div>
					<div><p>예상 필요인원</p><input type="text" name="workPerson" oninput="updateProgress()" data-target="muge_personnel" class="essential"></div>
					<div><p>작업위치</p><input type="text" name="workRegion" oninput="updateProgress()" data-target="muge_region" class="essential"></div>
					<div><p>작업계획서</p><input type="text" name="workPlan" oninput="updateProgress()" data-target="muge_workplan" class="essential"></div>
					<div><p>작업분야</p><input type="text" name="workField"></div>
					<div><p>예상작업일정</p><input type="date" name="workDate"></div>
					<div><p>필요조건</p><input type="text" name="workRequirements"></div>
					<div><p>예상단가</p><input type="text" name="workPay"></div>
					<div id="vipMain"><p>메인이미지</p><input type="file" name="mainImg"></div>
					<div id="vipBener"><p>베너이미지</p><input type="file" name="benerImg"></div>
				</form>
			</div>
			<div id="side_nav">
				<div>
					<div id="adding">
						<p id="complete">입력 완료까지 <span id="addProgress">0</span>% !</p>
						<div id="progressbox">
							<progress id="progress" value="0" max="100" min="0"></progress>
						</div>
						<div id="muge">
							<div id="muge_comname">작업명</div>
							<div id="muge_comex">작업설명</div>
							<div id="muge_personnel">예상필요인원</div>
							<div id="muge_region">작업위치</div>
							<div id="muge_workplan">작업계획서</div>
						</div>
					</div>
				</div>
				<button id="submit" form="conteant" type="button">등록하기</button>
				<div id="savebox">
					<div id="view">미리보기</div>
					<div id="temporary storage">임시저장</div>
				</div>
			</div>
		</div>
		<div class="footer"></div>
	</div>
	</div>
</body>
</html>