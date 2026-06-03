# Lấy image .NET SDK 10 để build source code
# SDK chứa: restore, build, publish,...
FROM mcr.microsoft.com/dotnet/sdk:10.0-preview AS build

# Tạo và chuyển vào thư mục làm việc /src trong container
WORKDIR /src

# Copy toàn bộ source code từ máy local vào container
COPY . .

# Tải các package NuGet
RUN dotnet restore

# Build và publish ứng dụng ở chế độ Release
# Kết quả được xuất ra thư mục /app/publish
RUN dotnet publish -c Release -o /app/publish

# =============================================

# Tạo stage thứ 2
# Chỉ dùng ASP.NET Runtime để chạy ứng dụng
# Runtime nhẹ hơn SDK nên giảm kích thước image
FROM mcr.microsoft.com/dotnet/aspnet:10.0-preview

# Thư mục làm việc khi container chạy
WORKDIR /app

# Copy kết quả build từ stage "build"
# sang thư mục /app của runtime container
COPY --from=build /app/publish .

ENV ASPNETCORE_URLS=http://+:8080

# Khai báo ứng dụng sử dụng port 8080
# Chỉ mang tính tài liệu, không tự mở port
EXPOSE 8080

# Khi container khởi động sẽ chạy lệnh:
# dotnet DevOpsDemo.dll
ENTRYPOINT ["dotnet", "DevOpsDemo.dll"]