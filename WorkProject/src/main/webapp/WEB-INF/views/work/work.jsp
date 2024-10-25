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
<script src="/resources/js/search.js"></script>
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
				</span> <input type="text" id="search" name="search"
					value="${work.keyword}">
			</div>
			<c:if test="${sessionScope.mydate ==  null}">
				<div class="login">
					<a href="login">로그인</a> | <a href="signup">회원가입</a>
				</div>
			</c:if>
			<c:if test="${sessionScope.mydate !=  null}">
				<div class="login">
					<a href="mypage/${sessionScope.mydate.id}">${sessionScope.mydate.id}</a>
					| <a href="logout">로그아웃</a>
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
			<div class="myprofile">
				<div class="myprofile_my">나의 경력</div>
				<div class="myprofile_work">작업 경험</div>
				<div class="myprofile_up">다음작업 승인률 올리기</div>
				<div class="myprofile_product">긴급 발주</div>
			</div>
			<div class="my_work">
				<div id="slideShow">
					<ul class="slides">
						<c:if test="${sessionScope.mydate.id != null}">
							<c:forEach items="${myWork}" var="mywork">
								<li>
									<div class="slide_box">
										<div class="slide_box_workname">${mywork.workName}</div>
										<div class="slide_box_workex">
											작업내용
											<p class="slide_box_workex">${mywork.workDetailed}</p>
										</div>
										<div class="slide_box_uploaddate">
											게시일
											<p class="slide_box_text">${mywork.uploadDate}</p>
										</div>
										<div class="slide_box_uploadname">
											게시자명
											<p class="slide_box_text">${mywork.uploadName}</p>
										</div>
										<div class="slide_box_view">
											조회수
											<p class="slide_box_text">${mywork.views}</p>
										</div>
										<div class="slide_box_viewcom">
											지원업체 수
											<p class="slide_box_text">${mywork.viewsCom}</p>
										</div>
									</div>
								</li>
							</c:forEach>
						</c:if>
						<c:if test="${sessionScope.mydate.id == null}">
							<li>
								<div id="nonlogin">로그인후 확인 가능합니다</div>
							</li>
						</c:if>
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
			<c:if test="${viplist.size() != null}">
				<c:if test="${vipcol != null}">
					<a href="/work/view/${vipcol.workNum}" target="_blank">
						<div class="vip_col">
							<div class="product_hover_logo">
								<img class="hover_logo_imgfile" alt=""
									src="/resources/imges/${vipcol.comName}_logo.png">
							</div>
							<div class="product_hover_comname">${vipcol.comName}</div>
							<div class="porduct_hover_comex">${vipcol.comName}</div>
							<div class="product_hover_job">${vipcol.workName}</div>
							<div class="product_hover_jobex">${vipcol.workDetailed}</div>
							<div class="product_hovert_img">
								<img class="hover_img_img" src="/upload/${vipcol.benerImgName}">
							</div>
						</div>
					</a>
				</c:if>
			</c:if>
			<c:if test="${viplist.size() == null}">
				<c:if test="${vipcol != null}">
					<c:forEach var="vipcol" items="${vipcol}">
						<a href="/work/view/${vipcol.workNum}" target="_blank">
							<div class="vip_col">
								<div class="product_hover_logo">
									<img class="hover_logo_imgfile" alt=""
										src="/resources/imges/${vipcol.comName}_logo.png">
								</div>
								<div class="product_hover_comname">${vipcol.comName}</div>
								<div class="porduct_hover_comex">${vipcol.comName}</div>
								<div class="product_hover_job">${vipcol.workName}</div>
								<div class="product_hover_jobex">${vipcol.workDetailed}</div>
								<div class="product_hovert_img">
									<img class="hover_img_img" src="/upload/${vipcol.benerImgName}">
								</div>
							</div>
						</a>
					</c:forEach>


				</c:if>
			</c:if>
			<c:if test="${viplist.size() != null}">
				<c:forEach var="item" items="${viplist}">
					<a href="/work/view/${viplist.workNum}" target="_blank">
						<div class="product">
							<div class="porduct_data">
								<div class="product_logo">
									<img class="logo_imgfile" alt=""
										src="/upload/${item.comName}_logo.png">
								</div>
								<div class="product_comname">${item.comName}</div>
								<div class="product_job">${item.workName}</div>
								<div class="product_jobex">${item.workDetailed}</div>
								<div class="product_img">
									<img class="img_img" src="/upload/${item.mainImgName}">
								</div>
							</div>
							<div class="product_hover">
								<div class="product_hover_logo">
									<img class="hover_logo_imgfile" alt=""
										src="/upload/${item.comName}_logo.png">
								</div>
								<div class="product_hover_comname">${item.comName}</div>
								<div class="porduct_hover_comex">sasa</div>
								<div class="product_hover_job">${item.workName}</div>
								<div class="product_hover_jobex">${item.workDetailed}</div>
								<div class="product_hovert_img">
									<img class="hover_img_img" src="/upload/${item.benerImgName}">
								</div>
							</div>
						</div>
					</a>
				</c:forEach>
			</c:if>
			<c:if test="${viplist.size() >6}">
				<div class="product_not">8</div>
				<div class="product_not">9</div>
				<div class="product_not">0</div>
				<div class="product_not">0</div>
			</c:if>
		</div>
		<div class="title">기업 공고</div>
		<div class="product_list">
			<c:if test="${list.size() != null}">
				<c:forEach items="${list}" var="item">
					<a href="/work/view/${item.workNum}" target="_blank">
						<div class="product_not">
							<div class="n_product_logo">
								<img class="n_logo_imgfile" alt=""
									src="/resources/imges/${item.comName}_logo.png">
							</div>
							<div class="n_product_comname">${item.comName}</div>
							<div class="n_product_job">${item.workName}</div>
							<div class="n_product_jobex">${item.workDetailed}</div>
						</div>
					</a>
				</c:forEach>
			</c:if>
		</div>
		<div class="footer"></div>
	</div>
	</div>
</body>
</html>