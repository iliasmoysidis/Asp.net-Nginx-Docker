# Use the .NET 6.0 SDK image as base
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the initialization script
COPY *.csproj .
RUN dotnet restore

COPY . .

CMD ["dotnet", "watch", "run",  "--urls", "https://*:443;http://*:80"]