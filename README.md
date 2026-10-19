# Hệ Thống Quản Lý Sản Phẩm (JSP & Servlet - MVC)

Dự án bài kiểm tra cuối module: Phát triển ứng dụng Web Java cơ bản thực hiện các chức năng CRUD (Create, Read, Update, Delete) sản phẩm sử dụng kiến trúc MVC với JSP, Servlet, JDBC và MySQL.

---

## 📌 Tính năng chính
- **Xem danh sách sản phẩm**: Hiển thị bảng danh sách sản phẩm gồm ID, Tên, Đơn giá và Số lượng.
- **Thêm sản phẩm mới**: Form nhập liệu trực quan, xác thực dữ liệu và tự động cập nhật danh sách.
- **Sửa thông tin sản phẩm**: Tải dữ liệu sản phẩm tương ứng lên form để cập nhật thông tin.
- **Xóa sản phẩm**: Hỗ trợ hộp thoại xác nhận (Confirm Dialog) trước khi thực hiện xóa.
- **Quản lý dữ liệu**: Kết nối và thao tác với cơ sở dữ liệu MySQL qua JDBC (`PreparedStatement`).

---

## 🛠 Công nghệ sử dụng
- **Backend**: Java Servlet (Jakarta Servlet API 5.0), JDBC
- **Frontend**: JSP, JSTL, HTML5, CSS3
- **Cơ sở dữ liệu**: MySQL 8.x
- **Build tool**: Apache Maven
- **Server**: Apache Tomcat 10+ (hỗ trợ Jakarta EE)

---

## 📂 Cấu trúc thư mục dự án
```text
ProductManagement/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/exam/
│       │       ├── config/
│       │       │   └── DatabaseConnection.java   # Cấu hình kết nối MySQL JDBC
│       │       ├── controller/
│       │       │   └── ProductServlet.java       # Điều hướng & xử lý request
│       │       ├── dao/
│       │       │   └── ProductDAO.java           # Tương tác CRUD với CSDL
│       │       └── model/
│       │           └── Product.java              # Đối tượng Product (POJO)
│       └── webapp/
│           ├── WEB-INF/
│           │   ├── web.xml                       # Cấu hình ứng dụng web
│           │   └── views/
│           │       ├── product-list.jsp          # Trang danh sách sản phẩm
│           │       └── product-form.jsp          # Form thêm/sửa sản phẩm
│           └── index.jsp                         # Trang chuyển hướng mặc định
├── database.sql                                  # Kịch bản khởi tạo CSDL & dữ liệu mẫu
├── pom.xml                                       # Quản lý dependency Maven
└── README.md                                     # Tài liệu hướng dẫn
```

---

## 🚀 Hướng dẫn cài đặt & triển khai

### 1. Chuẩn bị Cơ sở dữ liệu
- Mở MySQL Workbench hoặc terminal, thực thi file `database.sql`:
```bash
mysql -u root -p < database.sql
```
- Mở file `src/main/java/com/exam/config/DatabaseConnection.java`, cập nhật `USER` và `PASS` phù hợp với tài khoản MySQL của máy bạn.

### 2. Chạy ứng dụng
#### Cách 1: Chạy trực tiếp trên IntelliJ IDEA / Eclipse
1. Import dự án dưới dạng **Maven Project**.
2. Cấu hình **Run/Debug Configurations** -> thêm **Tomcat Server** (bản 10 trở lên).
3. Thêm Deployment artifact: `ProductManagement:war exploded`.
4. Nhấn **Run** hoặc **Debug**.

#### Cách 2: Đóng gói file WAR bằng Maven
```bash
mvn clean package
```
Copy file `target/ProductManagement.war` vào thư mục `webapps/` của Apache Tomcat rồi khởi động Tomcat.

### 3. Truy cập hệ thống
Truy cập qua trình duyệt tại địa chỉ:
```
http://localhost:8080/ProductManagement/
```
