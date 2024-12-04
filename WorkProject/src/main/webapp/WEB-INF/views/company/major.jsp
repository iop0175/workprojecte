<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/main.css">
<link rel="stylesheet" href="/resources/css/work/workpage.css">
<script src="/resources/js/nav.js"></script>
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
		<div class="main"></div>
		<div class="title">기업 공고(WW Partners)</div>
		<div class="product_list">
			<c:if test="${viplist.size() != null}">
				<c:if test="${vipcol != null}">
					<div class="vip_col">
						<a href="/work/view/${vipcol.workNum}" target="_blank">
							<div class="product_hover_logo">
								<img class="hover_logo_imgfile" alt=""
									src="/upload/ComLogo/${vipcol.comLogo}">
							</div>
							<div class="product_hover_comname">${vipcol.comName}</div>
							<div class="porduct_hover_comex">${vipcol.workField}</div>
							<div class="product_hover_job">${vipcol.workName}</div>
							<div class="product_hover_jobex">${vipcol.workDetailed}</div>
							<div class="product_hovert_img">
								<img class="hover_img_img" src="/upload/${vipcol.benerImgName}">
							</div>
						</a>
					</div>
				</c:if>
			</c:if>
			<c:if test="${viplist.size() == null}">
				<c:if test="${vipcol != null}">
					<c:forEach var="vipcol" items="${vipcol}">
						<a href="/work/view/${vipcol.workNum}" target="_blank">
							<div class="vip_col">
								<div class="product_hover_logo">
									<img class="hover_logo_imgfile" alt=""
										src="/upload/ComLogo/${vipcol.comLogo}">
								</div>
								<div class="product_hover_comname">${vipcol.comName}</div>
								<div class="porduct_hover_comex">${vipcol.workField}</div>
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
					<a href="/work/view/${item.workNum}" target="_blank">
						<div class="product">
							<div class="porduct_data">
								<div class="product_logo">
									<img class="logo_imgfile" alt=""
										src="/upload/ComLogo/${item.comLogo}">
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
										src="/upload/ComLogo/${item.comLogo}">
								</div>
								<div class="product_hover_comname">${item.comName}</div>
								<div class="porduct_hover_comex">${item.workField}</div>
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
			
		</div>
		<div class="title">기업 공고</div>
		<div class="product_list">
			<c:if test="${list.size() != null}">
				<c:forEach items="${list}" var="item">
					<a href="/work/view/${item.workNum}" target="_blank">
						<div class="product_not">
							<div class="n_product_logo">
								<img class="n_logo_imgfile" alt=""
									src="/upload/ComLogo/${item.comLogo}">
							</div>
							<div class="n_product_comname">${item.comName}</div>
							<div class="n_product_job">${item.workName}</div>
							<div class="n_product_jobex">${item.workField}</div>
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