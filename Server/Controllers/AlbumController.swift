import Vapor

struct AlbumController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let albums = routes.grouped("albums")
        albums.post(use: create)
        albums.get(use: getAll)
    }

    func create(req: Request) throws -> EventLoopFuture<Album> {
        let album = try req.content.decode(Album.self)
        return album.save(on: req.db).map { album }
    }

    func getAll(req: Request) throws -> EventLoopFuture<[Album]> {
        Album.query(on: req.db).all()
    }
}
