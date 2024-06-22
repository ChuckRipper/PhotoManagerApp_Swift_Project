import Vapor

struct PhotoController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let photos = routes.grouped("photos")
        photos.post(use: upload)
        photos.get(use: getAll)
    }

    func upload(req: Request) throws -> EventLoopFuture<Photo> {
        let photo = try req.content.decode(Photo.self)
        return photo.save(on: req.db).map { photo }
    }

    func getAll(req: Request) throws -> EventLoopFuture<[Photo]> {
        Photo.query(on: req.db).all()
    }
}
