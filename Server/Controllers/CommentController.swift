import Vapor

struct CommentController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let comments = routes.grouped("comments")
        comments.post(use: create)
        comments.get(use: getAll)
    }

    func create(req: Request) throws -> EventLoopFuture<Comment> {
        let comment = try req.content.decode(Comment.self)
        return comment.save(on: req.db).map { comment }
    }

    func getAll(req: Request) throws -> EventLoopFuture<[Comment]> {
        Comment.query(on: req.db).all()
    }
}
