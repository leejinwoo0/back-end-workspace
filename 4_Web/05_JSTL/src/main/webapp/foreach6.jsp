<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%-- for(int i = 0; i < =5; i++ ){} --%>
    <jsp:include page="header.jsp"/>
   <c:forEach var="i" begin="1" end="6" step="1">
   <h1${i}>JSTL...!!</h1${i}>
   </c:forEach>
</body>
</html>