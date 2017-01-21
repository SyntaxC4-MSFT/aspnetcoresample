FROM microsoft/aspnetcore
WORKDIR /app
COPY ./app .
ENTRYPOINT ["dotnet", "src.dll"]
