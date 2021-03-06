<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>/views/bookList.jsp</title>
</head>
<body>
    <center>
        <form action="bookList.do">
            <input type="text" name="keyword" >
            <input type="submit" value="검색">
        </form>        
    </center>
    <table>
        <tr>
            <td colspan="7" width="100%" bgcolor="green"></td>
        </tr>
        <c:forEach items="${bookList}" var ="b">
            <tr>
                <td rowspan="2"><img src="${b.image}"></td>
                <td width="200">제목 : "${b.title}"</td>
                <td width="100">저자 : ${b.author}</td>
            </tr>
            <tr>
                <td width="100">정가 : ${b.price }</td>
                <td width="100">할인가 : ${b.discount }</td>
                <td width="100">출판사 : ${b.publisher }</td>
                <td width="100">출판일 : ${b.pubdate }</td>
            </tr>
            <tr>
                <td colspan="7">책소개 : ${b.description}</td>
            </tr>
            <tr>
                <td colspan="7" width="100%" bgcolor="green"></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>