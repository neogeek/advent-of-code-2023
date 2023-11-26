FROM mcr.microsoft.com/dotnet/sdk:8.0

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN dotnet tool install -g dotnet-script

ENV PATH="${PATH}:/root/.dotnet/tools"

CMD ["dotnet", "script", "main.cs"]
