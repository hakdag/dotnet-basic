FROM microsoft/dotnet:latest

WORKDIR /app

COPY ./app/publish .

ENTRYPOINT ["dotnet", "web1.dll"]