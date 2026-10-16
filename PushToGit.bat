@echo off
:: Chuyển đường dẫn làm việc về thư mục chứa file .bat
d:
cd /d "D:\02.Learning\00.HUTECHDocuments\HK4\ECMP177_LapTrinhTrenThietBiDiDong\DoAnLapTrinhTrenThietBiDiDong\SmartHome_Project_HUTECH\ToGit\HUTECH_SMART_HOME"

echo ============================================
echo   DANG TIEN HANH PUSH CODE LEN GITHUB
echo ============================================

:: Thêm tất cả file thay đổi vào staging
git add .

:: Tự động gán thời gian hiện tại làm nội dung commit
git commit -m "Auto update: %date% %time%"

:: Kéo code mới về trước để tránh lỗi rejected
git pull --rebase origin main

:: Đẩy commit lên branch main
git push origin main

echo.
echo ============================================
echo   DA DAY DU LIEU HOAN TAT!
echo ============================================
pause