<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/work/workpage.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${list}" var="item">
			<div class="product_not">
				<div class="n_product_logo">
					<img class="n_logo_imgfile" alt=""
						src="/resources/imges/${item.comName}_logo.png">
				</div>
				<div class="n_product_comname">${item.comName}</div>
				<div class="n_product_job">${item.workName}</div>
				<div class="n_product_jobex">${item.workDetailed}</div>
			</div>
		</c:forEach>
</body>
</html>