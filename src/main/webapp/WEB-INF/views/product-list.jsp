<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Hệ Thống Quản Lý Sản Phẩm</title>
    <style>
        body { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Arial, sans-serif; margin: 30px; background-color: #f7f9fa; }
        .container { max-width: 900px; margin: 0 auto; background: #fff; padding: 25px; border-radius: 8px; box-shadow: 0 2px 8px rgba(0,0,0,0.08); }
        h2 { margin-top: 0; color: #1e293b; }
        .btn { display: inline-block; padding: 8px 14px; text-decoration: none; border-radius: 4px; font-weight: 500; font-size: 14px; cursor: pointer; border: none; }
        .btn-primary { background: #2563eb; color: #fff; margin-bottom: 16px; }
        .btn-primary:hover { background: #1d4ed8; }
        .btn-warning { background: #f59e0b; color: #fff; }
        .btn-danger { background: #ef4444; color: #fff; }
        table { width: 100%; border-collapse: collapse; margin-top: 10px; }
        th, td { padding: 12px; text-align: left; border-bottom: 1px solid #e2e8f0; }
        th { background-color: #f1f5f9; color: #475569; }
        tr:hover { background-color: #f8fafc; }
        .actions a { margin-right: 6px; }
    </style>
</head>
<body>
<div class="container">
    <h2>Danh Sách Sản Phẩm</h2>
    <a href="${pageContext.request.contextPath}/products?action=new" class="btn btn-primary">+ Thêm Sản Phẩm Mới</a>

    <table>
        <thead>
            <tr>
                <th style="width: 80px;">ID</th>
                <th>Tên sản phẩm</th>
                <th style="width: 150px;">Đơn giá</th>
                <th style="width: 100px;">Số lượng</th>
                <th style="width: 150px;">Hành động</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${productList}">
                <tr>
                    <td>${item.id}</td>
                    <td><strong>${item.name}</strong></td>
                    <td><fmt:formatNumber value="${item.price}" pattern="#,##0"/> VNĐ</td>
                    <td>${item.quantity}</td>
                    <td class="actions">
                        <a href="${pageContext.request.contextPath}/products?action=edit&id=${item.id}" class="btn btn-warning">Sửa</a>
                        <a href="${pageContext.request.contextPath}/products?action=delete&id=${item.id}" 
                           class="btn btn-danger" 
                           onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm: ${item.name}?');">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
            <c:if test="${empty productList}">
                <tr>
                    <td colspan="5" style="text-align: center; color: #64748b;">Chưa có sản phẩm nào trong hệ thống.</td>
                </tr>
            </c:if>
        </tbody>
    </table>
</div>
</body>
</html>
