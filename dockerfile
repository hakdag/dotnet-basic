FROM microsoft/dotnet:latest

WORKDIR /app

COPY ./publish .

ENTRYPOINT ["dotnet", "web1.dll", "--server.urls=http://*:8080"]