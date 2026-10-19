<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>${product != null ? "Cập Nhật Sản Phẩm" : "Thêm Sản Phẩm Mới"}</title>
    <style>
        body { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Arial, sans-serif; margin: 30px; background-color: #f7f9fa; }
        .form-card { max-width: 500px; margin: 0 auto; background: #fff; padding: 25px; border-radius: 8px; box-shadow: 0 2px 8px rgba(0,0,0,0.08); }
        h2 { margin-top: 0; color: #1e293b; }
        .form-group { margin-bottom: 16px; }
        label { display: block; margin-bottom: 6px; font-weight: 500; color: #334155; }
        input[type="text"], input[type="number"] { width: 100%; padding: 10px; border: 1px solid #cbd5e1; border-radius: 4px; box-sizing: border-box; }
        .btn { padding: 10px 16px; border-radius: 4px; text-decoration: none; font-weight: 500; cursor: pointer; border: none; }
        .btn-submit { background: #16a34a; color: white; }
        .btn-cancel { background: #94a3b8; color: white; margin-left: 8px; }
    </style>
</head>
<body>
<div class="form-card">
    <h2>${product != null ? "Cập Nhật Sản Phẩm" : "Thêm Sản Phẩm Mới"}</h2>
    
    <form action="${pageContext.request.contextPath}/products" method="post">
        <input type="hidden" name="action" value="${product != null ? 'update' : 'insert'}"/>
        <c:if test="${product != null}">
            <input type="hidden" name="id" value="${product.id}"/>
        </c:if>

        <div class="form-group">
            <label for="name">Tên sản phẩm:</label>
            <input type="text" id="name" name="name" value="${product.name}" required placeholder="Nhập tên sản phẩm"/>
        </div>

        <div class="form-group">
            <label for="price">Giá sản phẩm (VNĐ):</label>
            <input type="number" id="price" name="price" step="0.01" min="0" value="${product.price}" required placeholder="Nhập giá bán"/>
        </div>

        <div class="form-group">
            <label for="quantity">Số lượng:</label>
            <input type="number" id="quantity" name="quantity" min="0" value="${product.quantity}" required placeholder="Nhập số lượng"/>
        </div>

        <div>
            <button type="submit" class="btn btn-submit">${product != null ? "Lưu thay đổi" : "Thêm mới"}</button>
            <a href="${pageContext.request.contextPath}/products" class="btn btn-cancel">Quay lại</a>
        </div>
    </form>
</div>
</body>
</html>
