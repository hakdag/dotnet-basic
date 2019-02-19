rm -r publish
dotnet restore app
dotnet build app
dotnet publish app -o ../publish
