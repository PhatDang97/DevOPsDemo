# DevOPsDemo

.NET API
✓ Push GitHub

git init
git add .
git commit -m "Initial .NET 8 API"
git remote add origin https://github.com/PhatDang97/DevOPsDemo.git
git remote –v
git branch
git push -u origin master
git pull origin master --allow-unrelated-histories
git push -u origin master –force


→ Dockerfile
→ docker build
→ docker run
Source Code
      │
      ▼
COPY . .
      │
      ▼
dotnet restore
      │
      ▼
dotnet publish
      │
      ▼
/app/publish
      │
      ▼
COPY --from=build
      │
      ▼
Docker Image
      │
docker run
      ▼
Container
      │
      ▼
DevOpsDemo.dll chạy

docker build -t devopsdemo .
docker run -d -p 8080:8080 --name devopsdemo devopsdemo


→ Docker Hub
docker login
docker tag devopsdemo phat997/devopsdemo:v1
docker push phat997/devopsdemo:v1


→ CI/CD
Tạo Repository Secret
Actions secrets • PhatDang97/DevOPsDemo
Name	Value
DOCKER_USERNAME	phat997
DOCKER_PASSWORD	mật khẩu hoặc Docker Hub Access Token

-> deploy lên cloud
