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


→ Docker Hub
→ CI/CD