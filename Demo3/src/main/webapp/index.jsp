<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h4>Quản lý sinh viên</h4>

    <table border="1">
        <thead>
            <tr>
                <th>Id</th>
                <th>Họ tên</th>
                <th>Điểm</th>
                <th>Địa chỉ</th>
                <th>Học lực</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${students}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.studentName}</td>
                    <td>${item.score}</td>
                    <td>${item.address}</td>

                    <td>
                        <c:choose>
                            <c:when test="${item.score >= 8}">
                                Giỏi
                            </c:when>
                            <c:when test="${item.score >= 6}">
                                Khá
                            </c:when>
                            <c:when test="${item.score >= 5}">
                                Trung Bình
                            </c:when>
                            <c:otherwise>
                                Yếu
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>