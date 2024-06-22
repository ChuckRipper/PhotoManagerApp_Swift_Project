import Fluent
import Vapor

final class Album: Model, Content {
    static let schema = "albums"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "title")
    var title: String

    @Field(key: "description")
    var description: String

    @Parent(key: "user_id")
    var user: User

    init() { }

    init(id: UUID? = nil, title: String, description: String, userID: UUID) {
        self.id = id
        self.title = title
        self.description = description
        self.$user.id = userID
    }
}
