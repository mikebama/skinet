This project contains a .NET 9 API and an expected Angular client.

What I added

- `docker-compose.yml` at project root defining services: `api`, `client`, and `db` (PostgreSQL)
- `API/Dockerfile` to build and run the .NET API
- `client/Dockerfile` as a placeholder to serve a built Angular app via nginx

Notes and reasoning

- I scanned the backend (`API/Program.cs` and appsettings) and didn't find any EF Core or connection strings. Because no database provider was detected, I added PostgreSQL as a reasonable default for a new project. If you prefer SQL Server or SQLite, update `docker-compose.yml` and the API Dockerfile accordingly.

How to use (Windows PowerShell)

1. Build and start services

```powershell
docker compose up --build -d
```

2. Stop and remove

```powershell
docker compose down -v
```

Useful tips

- The API image exposes port 5000 on the host and the client at 4200.
- The connection string is set in environment variable `ConnectionStrings__DefaultConnection` for compatibility with .NET configuration binding.
- If you add EF Core to the backend, configure `AddDbContext` to use the `DefaultConnection` from configuration.
