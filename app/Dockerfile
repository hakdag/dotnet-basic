FROM microsoft/dotnet:2.2-aspnetcore-runtime AS runtime
WORKDIR /app
COPY ../publish .
ENTRYPOINT ["dotnet", "web1.dll", "--server.urls=http://*:8081"]