
---

## 🗃️ Mô tả cơ sở dữ liệu
Hệ thống gồm các bảng chính:

| Bảng | Mô tả |
|------|-------|
| `users` | Lưu thông tin người dùng (ID, username, email, mật khẩu, ngày tạo tài khoản). |
| `games` | Thông tin trò chơi (ID, tên game, thể loại, giá, ngày phát hành). |
| `orders` | Ghi nhận các đơn hàng mua game của người dùng. |
| `payments` | Lưu thông tin thanh toán cho các đơn hàng. |
| `reviews` | Người dùng đánh giá và nhận xét các game. |

---

## ⚙️ Cách sử dụng
1. Mở **MySQL Workbench / PostgreSQL / SQL Server Management Studio** (tùy CSDL bạn dùng).  
2. Chạy file `ddl_scripts.sql` để tạo toàn bộ bảng và ràng buộc.  
3. Nếu muốn, chạy thêm `stored_procedures.sql` để tạo các thủ tục lưu trữ.  
4. Xem sơ đồ `erd_diagram.png` để hiểu cấu trúc liên kết giữa các bảng.

---

## 🧱 Công nghệ sử dụng
- **Ngôn ngữ:** SQL (MySQL / PostgreSQL)
- **Công cụ:** MySQL Workbench, Draw.io (vẽ ERD)
- **Hệ quản trị cơ sở dữ liệu:** MySQL 8.0+

---

## 🧑‍💻 Tác giả
- **Họ tên:** Võ Văn Đạt  
- **Lớp / Trường:** N23DCCN078 - HOC VIEN CONG NGHE BUU CHINH VIEN THONG   
- **Ngày cập nhật:** 22/10/2025  

---

## 🏗️ Ghi chú
- CSDL có thể mở rộng thêm bảng như `achievements`, `leaderboards`, hoặc `game_sessions` nếu hệ thống phát triển thêm.
- Tất cả các file trong dự án nên được lưu trong Git để theo dõi thay đổi.


