# BÀI LÀM – HACKATHON 02

- **Mã đề:** 09
- **Họ tên:** Nguyễn Đức Tài
- **Lớp:** CNTT2
- **Link repository:**
- **Hệ điều hành (Windows/macOS):** Windows

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -force
mv noi_quy_thanh_vien.txt docs\
mkdir backup
cp data/thue_cho_thang_9.xlsx backup\
rm *.tmp
cd logs
ls
cd ..
Get-ChildItem -Recurse -Force
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
 Directory: C:\Users\Administrator\OneDrive\K26\starter-kit\coworking-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
dar--l        11/11/2026   1:37 PM                backup
dar--l        11/11/2026   1:34 PM                data
dar--l        11/11/2026   1:36 PM                docs
dar--l        11/11/2026   1:33 PM                evidence
dar--l        11/11/2026   1:34 PM                logs
dar--l        11/11/2026   1:31 PM                web
-a---l         11/3/2026   7:08 AM             72 .env
-a---l         11/3/2026   7:08 AM           2409 bai_lam.md


    Directory:
    C:\Users\Administrator\OneDrive\K26\starter-kit\coworking-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---l         11/3/2026   7:08 AM           6162 thue_cho_thang_9.xlsx


    Directory:
    C:\Users\Administrator\OneDrive\K26\starter-kit\coworking-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---l         11/3/2026   7:08 AM           6162 thue_cho_thang_9.xlsx


    Directory:
    C:\Users\Administrator\OneDrive\K26\starter-kit\coworking-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---l         11/3/2026   7:08 AM            146 noi_quy_thanh_vien.txt


    Directory:
    C:\Users\Administrator\OneDrive\K26\starter-kit\coworking-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---l         11/3/2026   7:08 AM            991 member.log


    Directory:
    C:\Users\Administrator\OneDrive\K26\starter-kit\coworking-website\web


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
dar--l        11/11/2026   1:31 PM                images
-a---l         11/3/2026   7:08 AM            605 app.js
-a---l         11/3/2026   7:08 AM            543 index.html
-a---l         11/3/2026   7:08 AM            460 style.css


    Directory:
    C:\Users\Administrator\OneDrive\K26\starter-kit\coworking-website\web\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---l         11/3/2026   7:08 AM           3069 logo-coworkhub.png

```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
Get-Content logs/member.log | Select-String "status=500" > logs/loi_500.txt

```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
2026-09-28 08:10:39 POST /api/dat-cho status=500
2026-09-28 08:12:50 POST /api/dat-cho status=500

```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
Get-Content logs/member.log | Select-String "status=404" | Measure-Object

```

```text
Count    : 4
Average  :
Sum      :
Maximum  :
Minimum  :
Property :

```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
.\tong_hop.ps1

```

### Nội dung file logs/tong_hop.txt

```text
=== BAO CAO VAN HANH MODEL AI ===

2026-09-28 08:10:39 POST /api/dat-cho status=500
2026-09-28 08:12:50 POST /api/dat-cho status=500
2026-09-28 08:18:12 POST /api/dat-cho status=500
2026-09-28 08:20:23 POST /api/the-thanh-vien status=500
2026-09-28 08:39:29 POST /api/dat-cho status=500
2026-09-28 08:47:02 POST /api/thanh-toan status=500




Count    : 4
Average  : 
Sum      : 
Maximum  : 
Minimum  : 
Property : 

```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [x] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [x] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 |Network/Console  | net::ERR_FILE_NOT_FOUND (logo.png)  | Kiểm tra lại đường dẫn tới file ảnh **logo.png** trong thẻ **<img>** tại **index.html:10** hoặc đảm bảo file ảnh đã được đặt đúng vào thư mục dự án. |
| 2 | console | Uncaught ReferenceError: hienThiBangModel is not defined (tại app.js:18) | Khai báo và định nghĩa hàm **hienThiBangGia** trong file JavaScript hoặc kiểm tra lại tên hàm đã viết đúng chính tả chưa. |

> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png).

### Báo cáo lỗi gửi trưởng nhóm

- **Context:** Đang mở và kiểm tra trang web **index.html** trên trình duyệt sau khi đã cập nhật lại đường dẫn file logo ở dòng 10.
- **Expected:** Trang web tải thành công toàn bộ tài nguyên, hiển thị chính xác hình ảnh logo (GF) ở góc trái tiêu đề và nạp đầy đủ dữ liệu bảng giá.
- **Actual:** Logo đã hiển thị thành công, tuy nhiên bảng giá vẫn chưa hiển thị dữ liệu do file JavaScript (app.js) phát sinh lỗi chưa định nghĩa hàm.
- **Log:** Uncaught ReferenceError: hienThiBangModel is not defined

### Câu tìm kiếm Google

```text
site:stackoverflow.com "Uncaught ReferenceError: hienThiBangModel is not defined"

```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/thue_cho_thang_9.xlsx`, không cần ghi vào đây.
