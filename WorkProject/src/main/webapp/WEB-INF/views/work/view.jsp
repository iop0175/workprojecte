<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="/resources/css/main.css">
<link rel="stylesheet" href="/resources/css/work/view.css">
<script src="/resources/js/nav.js"></script>
<script src="/resources/js/calc.js"></script>
<script src="/resources/js/apply.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-lite.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote-lite.min.js"></script>
<script src="/resources/lang/summernote-ko-KR.min.js"></script>
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
			<span> <svg width="30" height="30" viewbox="0 0 60 60"
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
			<div id="introBox">
				<div id="introBox">
					<div id="comnNme">${list.comName}</div>
					<div id="apply" data-comname="${list.comName}">공고 지원하기</div>
					<div id="workName">${list.workName}</div>
				</div>
				<div id="contentBox">
					<div>필요인원</div>
					<div>${list.workPerson}</div>
					<div>작업지역</div>
					<div>${list.workRegion}</div>
					<div>작업분야</div>
					<div>${list.workField}</div>
					<div>작업 시작일자</div>
					<div>${list.workDate}</div>
				</div>
				<div class="title_work">작업설명</div>
				<div id="mainContentBox">${list.workDetailed}</div>
				<div class="title_work">작업위치</div>
				<div id="areaContent">
					<div>작업지역</div>
					<div>${list.workRegion}  <span>${list.workExregion}</span></div>
					<a href="https://map.kakao.com/?q=${list.workRegion} ${list.workExregion}" target="_blank"> <span> <svg
								xmlns="http://www.w3.org/2000/svg" width="30px" height="30px"
								viewbox="0 0 30 13" fill="none">
                                    <path
									d="M12 21C15.5 17.4 19 14.1764 19 10.2C19 6.22355 15.866 3 12 3C8.13401 3 5 6.22355 5 10.2C5 14.1764 8.5 17.4 12 21Z"
									stroke="#000000" stroke-width="2" stroke-linecap="round"
									stroke-linejoin="round" />
                                    <path
									d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z"
									stroke="#000000" stroke-width="2" stroke-linecap="round"
									stroke-linejoin="round" />
                                </svg>
					</span>지도보기
					</a>
				</div>
				<div class="title_work">기업정보</div>
				<div id="comBox">
					<div id="comBoxComName">${com.comname}</div>

					<div id="comBox_content">
						<div>대표이름</div>
						<div>${com.ceoname}</div>
						<div>기업형태</div>
						<div>${com.stock}</div>
						<div>업종</div>
						<div>${com.comjob}</div>
						<div>설립일</div>
						<div>${com.comdate}</div>
						<div>홈페이지</div>
						<div>comHome</div>
						<div>주소</div>
						<div>${com.comregion}</div>
						<div id="comBoxLogo"><img class="comimg" alt="" src="/upload/ComLogo/${com.comLogo}"></div>
						<a href="/company/view/${com.comname}" id="comBoxComView">기업정보 보기</a>
					</div>

				</div>
				<div class="title_work" id="apply_title_box">지원 입력사항</div>
				<div id="applyBox" class="hide">
					<form action="/contract/vendor/${list.workNum}" method="post" id="applyform">
						<div class="applyBox_name">측정가</div>
						<div>
							<label for=""></label><input type="number" id="calc_num" name="pay">
							<span>만원</span>
						</div>
						<div id="applymu">
							<div class="calc" data-num="1000" data-operator="+">+1000만원</div>
							<div class="calc" data-num="100" data-operator="+">+100만원</div>
							<div class="calc" data-num="10" data-operator="+">+10만원</div>
							<div class="calc" data-num="1" data-operator="+">+1만원</div>
							<div class="calc" data-num="0" data-operator="*">clear</div>
							<div class="calc" data-num="1" data-operator="-">-1만원</div>
							<div class="calc" data-num="10" data-operator="-">-10만원</div>
							<div class="calc" data-num="100" data-operator="-">-100만원</div>
							<div class="calc" data-num="1000" data-operator="-">-1000만원</div>
						</div>
						<div class="applyBox_name">특이 사항</div>
						<div class="sum">
							<label for=""></label>
							<textarea id="summernote" name="info"></textarea>
						</div>
						<button id="applybutton">지원하기</button>
					</form>

				</div>
			</div>

			<div id="side_nav">
				<c:forEach items="${side}" var="side">
					<div class="sideList">
						<div class="sideComname">${side.comName}</div>
						<div>${side.workName}</div>
						<div class="sideWorkData">
							<div>${side.workRegion}</div>
							<div>${side.workField}</div>
						</div>
						<div>${side.workDate}</div>
						<div class="viewBox">
							<a href="/work/view/${side.workNum}"><div class="sideView">지원하러가기</div></a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="footer"></div>
	</div>
</body>
<script>
    $('#summernote').summernote({
        height: 300,
        focus: true,
        maxWidth: 500,
        lang: 'ko-KR',
        toolbar: [
            [
                'style', ['style']
            ],
            [
                'font',
                [
                    'bold', 'underline', 'clear'
                ]
            ],
            ['fontsize', ['fontsize']],
            [
                'color', ['color']
            ],
            [
                'para',
                [
                    'ul', 'ol', 'paragraph'
                ]
            ],
            [
                'table', ['table']
            ],
            [
                'insert',
                [
                    'link', 'picture', 'video'
                ]
            ],
            [
                'view',
                [
                    'fullscreen', 'codeview', 'help'
                ]
            ]
        ]
    });
</script>
</html>