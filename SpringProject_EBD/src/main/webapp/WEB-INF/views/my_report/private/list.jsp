<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/my_report/private/list.jsp</title>
<style>
	/* card 이미지 부모요소의 높이 지정 */
	.img-wrapper > img{
		height:250px;
		/* transform 을 적용할대 0.3s 동안 순차적으로 적용하기 */
		transition: transform 0.3s ease-out;
	}
	/* .img-wrapper 에 마우스가 hover 되었을때 적용할 css */
	.img-wrapper:hover{
		/* 원본 크기의 1.1 배로 확대 시키기*/
		transform: scale(1.05);
	}
</style>
</head>
<body>
<div class="container">
	<h3>마이 독후감 목록 출력하는 페이지</h3>
	<a href="${pageContext.request.contextPath }/my_report/private/insertform.do">마이독후감 새글 작성 페이지 이동</a>
	<div id="reportList">
		<c:forEach var="tmp" items="${requestScope.list }">
			<div class="img-wrapper">
				<a href="${pageContext.request.contextPath }/my_report/private/detail.do?num=${tmp.num} ">
				<img src="${pageContext.request.contextPath }${tmp.imgpath }" />
				</a>
			</div>
		</c:forEach>
	</div>
</div>
</body>
</html>