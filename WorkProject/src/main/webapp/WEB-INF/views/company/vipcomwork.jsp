<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<c:if test="${vipcol != null}">
					<div class="vip_col">
						<div class="product_hover_logo">
							<img class="hover_logo_imgfile" alt=""
								src="/upload/ComLogo/${vipcol.comLogo}">
						</div>
						<div class="product_hover_comname">${vipcol.comName}</div>
						<div class="porduct_hover_comex">${vipcol.comName}</div>
						<div class="product_hover_job">${vipcol.workName}</div>
						<div class="product_hover_jobex">${vipcol.workDetailed}</div>
						<div class="product_hovert_img">
							<img class="hover_img_img" src="/upload/${vipcol.benerImgName}">
						</div>
					</div>
			</c:if>	
			<c:if test="${viplist != null}">
				<c:forEach var="item" items="${viplist}">
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
				</c:forEach>
			</c:if>
			<c:if test="${viplist.size() >6}">
				<div class="product_not">8</div>
				<div class="product_not">9</div>
				<div class="product_not">0</div>
				<div class="product_not">0</div>
			</c:if>
</body>
</html>