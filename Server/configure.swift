import Fluent
import FluentPostgresDriver
import Vapor

public func configure(_ app: Application) throws {
    // Configure Postgres database
    app.databases.use(.postgres(
        hostname: Environment.get("DATABASE_HOST") ?? "localhost",
        username: Environment.get("DATABASE_USERNAME") ?? "vapor",
        password: Environment.get("DATABASE_PASSWORD") ?? "password",
        database: Environment.get("DATABASE_NAME") ?? "vapor"
    ), as: .psql)

    // Configure migrations
    app.migrations.add(CreateUser())
    app.migrations.add(CreateAlbum())
    app.migrations.add(CreatePhoto())
    app.migrations.add(CreateComment())

    // Register routes
    try routes(app)
}
