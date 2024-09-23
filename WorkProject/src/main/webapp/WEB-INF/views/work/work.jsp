<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="javascript" href="/resources/js/work/slider.js">
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
			<div class="logo">workwat</div>
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
				<a href="login">로그인</a>
				|
				<a href="signup">회원가입</a>
			</div>
		</div>
		<div class="navbar">
			<div class="manu">
				<span> <svg xmlns="http://www.w3.org/2000/svg" width="30"
						height="30" fill="currentColor" class="bi bi-list"
						viewbox="0 0 16 16">
                                <path fill-rule="evenodd"
							d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5m0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5" />
                            </svg>
				</span>
			</div>
			<div class="dropdown">
				<span> 기업 공고</span>
				<ul class="dropdown_item">
					<li><a href="company/major">대기업 공고</a></li>
					<li><a href="company/small">중소기업 공고</a></li>
					<li><a href="company/area">지역별 공고</a></li>
					<li><a href="company/field">분야별 공고</a></li>
				</ul>
			</div>
			<div class="dropdown">
				<span>개인 공고</span>
				<ul class="dropdown_item">
					<li><a href="private/area">지역별 공고</a></li>
					<li><a href="private/field">분야별 공고</a></li>
				</ul>
			</div>
			<div class="dropdown">
				<span>자재 발주</span>
				<ul class="dropdown_item">
					<li><a href="order">발주 확인</a></li>
					<li><a href="myorder">나의 발주</a></li>
				</ul>
			</div>
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
				<div class="logo_img">
					<img class="logo_img_file"
						src=""
						alt="">
				</div>
				<div class="logo">1</div>
				<div class="product_main">2</div>
			</div>
			<div class="product">
				<div class="logo_img">
					<img class="logo_img_file"
						src=""
						alt="">
				</div>
				<div class="logo">1</div>
				<div class="product_main">2</div>
				<div class="company_img">
					<img class="company_img_file"
						src=""
						alt=""> <img class="company_img_file_hover"
						src=""
						alt="">
				</div>
			</div>
			<div class="product">3</div>
			<div class="product">4</div>
			<div class="product">5</div>
			<div class="product">6</div>
			<div class="product">7</div>
			<div class="product_not">8</div>
			<div class="product_not">9</div>
			<div class="product_not">0</div>
			<div class="product_not">0</div>
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