FROM mcr.microsoft.com/dotnet/aspnet:5.0-nanoserver-1809

MAINTAINER Rick Strahl

ENV ASPNETCORE_URLS=http://*:80
ENV ASPNETCORE_ENVIRONMENT=Production

# Allow 1433 for SQL Server Access
EXPOSE 1433

WORKDIR /var/www/albumviewer

# copy publish folder contents to web root
COPY ./bin/Release/net5.0/publish .

# Run out of Publish Folder
CMD ["/bin/sh", "-c", "dotnet 'AlbumViewerNetCore.dll'"]