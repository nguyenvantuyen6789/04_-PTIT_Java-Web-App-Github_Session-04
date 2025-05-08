<%-- tạo taglib c: jstl core --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="js/data.js"></script>
</head>
<body>
    <h4>Trang chủ</h4>
    <%-- dùng jstl core in ra 1 giá trị --%>
    <c:out value="Pham Chien" />

    <br>
    <%-- c if: kiểm tra điều kiện rồi in ra --%>
    <c:set var="diem" value="60" />
    <c:if test="${diem >= 80}">
        Kết quả: Học sinh giỏi
    </c:if>
    <c:if test="${diem < 80}">
        Kết quả: Học sinh khá
    </c:if>

    <%-- c choose when giống như if, else if, else --%>
    <br>
    <c:set var="level" value="7" />
    <c:choose>
        <c:when test="${level >= 8}">
            <h4>Level max</h4>
        </c:when>
        <c:when test="${level >= 6}">
            <h4>Level medium</h4>
        </c:when>

        <c:otherwise>
            <h4>Level low</h4>
        </c:otherwise>
    </c:choose>
</body>
</html>