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
								src="">
						</div>
						<div class="product_hover_comname">${vipcol.priField}</div>
						<div class="porduct_hover_comex">${vipcol.priRegion}</div>
						<div class="product_hover_job">${vipcol.priOld}</div>
						<div class="product_hover_jobex">${vipcol.priGender}</div>
						<div class="product_hovert_img">
							<img class="hover_img_img" src="">
						</div>
					</div>
			</c:if>	
			<c:if test="${viplist != null}">
				<c:forEach var="item" items="${viplist}">
					<div class="product">
						<div class="porduct_data">
							<div class="product_logo">
								<img class="logo_imgfile" alt=""
									src="">
							</div>
							<div class="product_comname">${item.priField}</div>
							<div class="product_job">${item.priRegion}</div>
							<div class="product_jobex">${item.priOld}</div>
							<div class="product_img">
								<img class="img_img" src="">
							</div>
						</div>
						<div class="product_hover">
							<div class="product_hover_logo">
								<img class="hover_logo_imgfile" alt=""
									src="">
							</div>
							<div class="product_hover_comname">${item.priField}</div>
							<div class="porduct_hover_comex">${item.priRegion}</div>
							<div class="product_hover_job">${item.priOld}</div>
							<div class="product_hover_jobex">${item.priGender}</div>
							<div class="product_hovert_img">
								<img class="hover_img_img" src="">
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