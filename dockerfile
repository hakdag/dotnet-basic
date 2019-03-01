FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build
WORKDIR /app

COPY app/ ./
RUN dotnet restore

# copy and publish app and libraries
RUN dotnet publish -c Release -o publish

FROM microsoft/dotnet:2.2-aspnetcore-runtime AS runtime
WORKDIR /app
COPY --from=build /app/publish ./
ENTRYPOINT ["dotnet", "web1.dll", "--server.urls=http://*:8081"]