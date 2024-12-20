<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/main.css">
<link rel="stylesheet" href="/resources/css/login/addvip.css">
<script src="/resources/js/nav.js"></script>
<script src="/resources/js/vip.js"></script>
<title>Insert title here</title>
</head>
<body>
        <div class="container">
            <div class="header" id="nav">
                <div class="logo">
                    <a href="/work">workway</a>
                </div>
                <div class="serach_box">
                    <span>
                        <svg
                            id="serachBtn"
                            xmlns="http://www.w3.org/2000/svg"
                            width="30"
                            height="30"
                            fill="currentColor"
                            class="bi bi-search"
                            viewbox="0 0 16 16">
                            <path
                                d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
                        </svg>
                    </span>
                    <input type="text" id="serach" name="serach">
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
                    <span id="nemu">
                        <svg
                            xmlns="http://www.w3.org/2000/svg"
                            width="30"
                            height="30"
                            fill="currentColor"
                            class="bi bi-list"
                            viewbox="0 0 16 16">
                            <path
                                fill-rule="evenodd"
                                d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5"/>
                        </svg>
                    </span>
                </div>
                <div class="dropdown">
                    <span>
                        기업 공고</span>
                    <ul class="dropdown_item">
                        <li>
                            <a href="/company/major">대기업 공고</a>
                        </li>
                        <li>
                            <a href="/company/small">중소기업 공고</a>
                        </li>
                        <li>
                            <a href="/company/area">지역별 공고</a>
                        </li>
                        <li>
                            <a href="/company/field">분야별 공고</a>
                        </li>
                    </ul>
                </div>
                <div class="dropdown">
                    <span>개인 공고</span>
                    <ul class="dropdown_item">
                        <li>
                            <a href="/private/area">지역별 공고</a>
                        </li>
                        <li>
                            <a href="/private/field">분야별 공고</a>
                        </li>
                    </ul>
                </div>
                <div class="dropdown">
                    <span>자재 발주</span>
                    <ul class="dropdown_item">
                        <li>
                            <a href="/order">발주 확인</a>
                        </li>
                        <li>
                            <a href="/myorder">나의 발주</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div id="navhi">
                <span>
                    <svg width="30" height="30" viewbox="0 0 60 60" id="cross">
                        <path
                            style="fill:#030104;"
                            d="M47.743,41.758L33.955,26.001l13.788-15.758c2.343-2.344,2.343-6.143,0-8.486
			c-2.345-2.343-6.144-2.342-8.486,0.001L26,16.91L12.743,1.758C10.4-0.584,6.602-0.585,4.257,1.757
			c-2.343,2.344-2.343,6.143,0,8.486l13.788,15.758L4.257,41.758c-2.343,2.343-2.343,6.142-0.001,8.485
			c2.344,2.344,6.143,2.344,8.487,0L26,35.091l13.257,15.152c2.345,2.344,6.144,2.344,8.487,0
			C50.086,47.9,50.086,44.101,47.743,41.758z"/>
                    </svg>
                </span>
                <ul >
                    <li>
                        <a href="/company/major">대기업 공고</a>
                    </li>
                    <li>
                        <a href="/company/small">중소기업 공고</a>
                    </li>
                    <li>
                        <a href="/company/area">지역별 공고</a>
                    </li>
                    <li>
                        <a href="/company/field">분야별 공고</a>
                    </li>
                </ul>
                <ul>
                    <li>
                        <a href="/private/area">지역별 공고</a>
                    </li>
                    <li>
                        <a href="/private/field">분야별 공고</a>
                    </li>
                </ul>
                <ul >
                    <li>
                        <a href="/order">발주 확인</a>
                    </li>
                    <li>
                        <a href="/myorder">나의 발주</a>
                    </li>
                </ul>
            </div>
            <div class="main">
                <div id="vipName">WW Partners 가입하기</div>
                <div id="mainText">WW Partners만의 상단 노출, 이미지 추가 기능으로 주목받으세요!" WW Partners 회원은 게시물이 항상 상단에 배치되고
                    이미지로 시선을 사로잡아 더 많은 관심을 끌 수 있습니다. 지금 WW Partners로 업그레이드하고, 효과적인 홍보를 경험해 보세요!
                </div>
                <div id="vipList">
                    <div class="vipBox">
                        <div class="vipTi">
                            1 Month Pack
                        </div>
                        <div class="viptext">
                            <span class="won">15000₩</span>/mon</div>
                            <div id="free"><br></div>
                        <div class="vipex">
                            <p>1달간 WW Partners 해택을 누리세요</p>
                        </div>
                        <div class="getbtn" data-end="1">Get WW Partners</div>
                    </div>
                    <div class="vipBox">
                        <div class="vipTi">6 Month Pack</div>
                        <div class="viptext">
                            <span class="won">10000₩</span>/mon</div>
                            <div id="free"><br></div>
                        <div class="vipex">
                            <p> 저렴한 가격으로 6개월간 WW Partners 해택을 누리세요</p>
                        </div>
                        <div class="getbtn" data-end="6">Get WW Partners</div>
                    </div>
                    <div class="vipBoxhi">
                        <div class="vipTihi">1 Year Pack</div>
                        <div class="viptext">
                            <span class="won">8000₩</span>/mon</div>
                            <div id="free">+ 1Month Free</div>
                        <div class="vipex">
                            <p>1달을 추가하여 총 13개월간 해택을 누리세요</p>
                        </div>
                        <div class="getbtnhi" data-end="13">Get WW Partners</div>
                    </div>
                    
                </div>
            </div>
            <div class="footer"></div>
        </div>
    </div>
</body>
</html>