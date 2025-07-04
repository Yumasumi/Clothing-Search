<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>多筆資料查詢</title>
</head>
<body>
<h2>多筆資料查詢</h2>

<!-- 搜尋表單 -->
<form method="post" action="search">
    <input type="text" name="keyword" placeholder="請輸入商品名稱或分類">
    <input type="submit" value="查詢">
</form>

<hr>

<!-- 查詢結果 -->
<c:if test="${not empty products}">
    <table border="1" cellpadding="5" cellspacing="0">
        <thead>
            <tr>
                <th>ID</th>
                <th>商品名稱</th>
                <th>分類</th>
                <th>風格</th>
                <th>價格</th>
                <th>剩餘數量</th>
                <th>顏色</th>
                <th>尺寸</th>
                <th>商品描述</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="p" items="${products}">
                <tr>
                    <td>${p.id}</td>
                    <td>${p.name}</td>
                    <td>${p.category}</td>
                    <td>${p.style}</td>
                    <td>${p.price}</td>
                    <td>${p.stock}</td>
                    <td>${p.color}</td>
                    <td>${p.size}</td>
                    <td>${p.description}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</c:if>

<c:if test="${empty products}">
    <p>請輸入關鍵字進行查詢，或查無資料。</p>
</c:if>

</body>
</html>
