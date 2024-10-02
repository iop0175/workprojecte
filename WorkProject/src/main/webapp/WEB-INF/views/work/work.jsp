<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="javascript" href="/resources/js/work/slider.js">
<script src="/resources/js/nav.js"></script>
<link rel="stylesheet" href="/resources/css/main.css">
<link rel="stylesheet" href="/resources/css/work/workpage.css">
<link rel="stylesheet" href="/resources/css/work/slider.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<title>Document</title>
<script></script>

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
			<c:if test="${sessionScope.mydate ==  null}">
			<div class="login">
				<a href="login">로그인</a> | <a href="signup">회원가입</a>
			</div>
			</c:if>
			<c:if test="${sessionScope.mydate !=  null}">
			<div class="login">
				<a href="mypage/${sessionScope.mydate.id}">${sessionScope.mydate.id}</a> | <a href="logout">로그아웃</a>
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
                    <svg width="30" height="30" viewBox="0 0 60 60" id="cross">
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
			<div class="myprofile">
				<div class="myprofile_my">나의 경력</div>
				<div class="myprofile_work">작업 경험</div>
				<div class="myprofile_up">다음작업 승인률 올리기</div>
				<div class="myprofile_product">긴급 발주</div>
			</div>
			<div class="my_work">
				<div id="slideShow">
					<ul class="slides">
						<li>
							<div class="slide_box"></div>
						</li>
						<li>
							<div class="slide_box"></div>
						</li>
						<li>
							<div class="slide_box"></div>
						</li>
						<li>
							<div class="slide_box"></div>
						</li>
						<li>
							<div class="slide_box"></div>
						</li>
					</ul>
					<p class="controller">
						<span class="prev">&lang;</span> <span class="next">&rang;</span>
					</p>
				</div>
				<script src="/resources/js/work/slide_show.js"></script>
			</div>
			<div class="my_ad">AD</div>
			<div class="main_ad">AD</div>
		</div>
		<div class="title">기업 공고(WW Partners)</div>
		<div class="product_list">
			<div class="vip_col">
				<div class="product_hover_logo">
					<img class="hover_logo_imgfile" alt="" src="/resources/imges/${item.comname}_logo.png">
				</div>
				<div class="product_hover_comname">${item.comname}</div>
				<div class="porduct_hover_comex">sasa</div>
				<div class="product_hover_job">${item.workname}</div>
				<div class="product_hover_jobex">${needswork}a</div>
				<div class="product_hovert_img">
					<img class="hover_img_img" src="">
				</div>
			</div>
			<c:forEach var="item" items="${list}">
				<div class="product">
					<div class="porduct_data">
						<div class="product_logo">
							<img class="logo_imgfile" alt="" src="/resources/imges/${item.comname}_logo.png">
						</div>
						<div class="product_comname">${item.comname}</div>
						<div class="product_job">${item.workname}</div>
						<div class="product_jobex">${needswork}</div>
						<div class="product_img">
							<img class="img_img" src="/resources/imges/${item.comname}_title.png">
						</div>
					</div>
					<div class="product_hover">
						<div class="product_hover_logo">
							<img class="hover_logo_imgfile" alt="" src="/resources/imges/${item.comname}_logo.png">
						</div>
						<div class="product_hover_comname">${item.comname}</div>
						<div class="porduct_hover_comex">sasa</div>
						<div class="product_hover_job">${item.workname}</div>
						<div class="product_hover_jobex">${needswork}</div>
						<div class="product_hovert_img">
							<img class="hover_img_img" src="/resources/imges/${item.comname}_title.png">
						</div>
					</div>
				</div>
			</c:forEach>
			<c:if test="${list.size() >6}">
			<div class="product_not">8</div>
			<div class="product_not">9</div>
			<div class="product_not">0</div>
			<div class="product_not">0</div>
			</c:if>
		</div>
		<div class="title">기업 공고</div>
		<div class="product_list">
			<div class="product_not">8</div>
			<div class="product_not">9</div>
			<div class="product_not">0</div>
			<div class="product_not">0</div>
			<div class="product_not">0</div>
			<div class="product_not">0</div>
			<div class="product_not">0</div>
			<div class="product_not">0</div>
			<div class="product_not">0</div>
			<div class="product_not">0</div>
			<div class="product_not">0</div>
			<div class="product_not">0</div>
		</div>
		<div class="footer"></div>
	</div>
	</div>
</body>
</html>