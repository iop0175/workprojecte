<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="/resources/css/main.css">
<link rel="stylesheet" href="/resources/css/login/comadd.css">
<script src="/resources/js/nav.js"></script>
<title>Insert title here</title>
</head>
<body>
        <div class="container">
            <div class="header" id="nav">
                <div class="logo">workwat</div>
                <div class="serach_box">
                    <span>
                        <svg
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
                    <input type="text">
                </div>
                <div class="login">
                    <a href="login">로그인</a>
                    |
                    <a href="signup">회원가입</a>
                </div>
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
                        <a href="company/major">대기업 공고</a>
                    </li>
                    <li>
                        <a href="company/small">중소기업 공고</a>
                    </li>
                    <li>
                        <a href="company/area">지역별 공고</a>
                    </li>
                    <li>
                        <a href="company/field">분야별 공고</a>
                    </li>
                </ul>
                <ul>
                    <li>
                        <a href="private/area">지역별 공고</a>
                    </li>
                    <li>
                        <a href="private/field">분야별 공고</a>
                    </li>
                </ul>
                <ul >
                    <li>
                        <a href="order">발주 확인</a>
                    </li>
                    <li>
                        <a href="myorder">나의 발주</a>
                    </li>
                </ul>
            </div>
            <div class="main">
                <div>
                    <h1>COMPANY</h1>
                </div>
                <form method="post">
                    <div>업체 등록하기</div>
                    <div>
                        <label for="">업체명</label><input type="text" name="comname"></div>
                    <div>
                        <label for="">업종</label><input type="text" name="comjob"></div>
                    <div>
                        <label for="">지역</label><input type="text" name="comregion"></div>
                    <div>
                        <label for="">대표자명</label><input type="text" name="ceoname"></div>
                    <div>
                        <label for="">사업자번호</label><input type="number" name="combrn"></div>
                    <div>
                        <label for="">설립일자</label><input type="date" name="comdate"></div>
                    <div>
                        <label for="">상장유무</label><input type="text" name="stock"></div>
                    <div><label for=""></label><input type="file" name="comlogo"></div>
                    <button>등록</button>
                </form>
            </div>
            <div class="footer"></div>
        </div>
    </div>
</body>
</html>