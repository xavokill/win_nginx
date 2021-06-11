# escape = `
FROM mcr.microsoft.com/windows/nanoserver

SHELL ["powershell", "-command"]

WORKDIR /

RUN Invoke-WebRequest -Uri "http://nginx.org/download/nginx-1.20.1.zip" -OutFile "temp.zip";  `
    Expand-Archive -Path "\temp.zip"; `
    Move-Item -Path "\temp\nginx-1.20.1" -Destination "\nginx"; `    
    Remove-Item -Path "\nginx\conf" -Recurse; `
    Remove-Item -Path "\temp.zip"; `
    Remove-Item -Path "\temp" -Recurse

WORKDIR /nginx

CMD ["nginx", "-g", "\"daemon off;\""]