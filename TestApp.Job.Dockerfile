FROM mcr.microsoft.com/dotnet/core/sdk:3.1-alpine3.12 AS build
WORKDIR /sln

# Copy project file and restore
COPY "./src/TestApp.Job/TestApp.Job.csproj" "./src/TestApp.Job/"
RUN dotnet restore ./src/TestApp.Job/TestApp.Job.csproj

# Copy the actual source code
COPY "./src/TestApp.Job" "./src/TestApp.Job"

# Build and publish the app
RUN dotnet publish "./src/TestApp.Job/TestApp.Job.csproj" -c Release -o /app/publish

#FINAL image
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-alpine3.12
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "TestApp.Job.dll"]