import Fluent
import Vapor

final class Comment: Model, Content {
    static let schema = "comments"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "text")
    var text: String

    @Parent(key: "photo_id")
    var photo: Photo

    @Parent(key: "user_id")
    var user: User

    @Field(key: "timestamp")
    var timestamp: Date

    init() { }

    init(id: UUID? = nil, text: String, photoID: UUID, userID: UUID, timestamp: Date) {
        self.id = id
        self.text = text
        self.$photo.id = photoID
        self.$user.id = userID
        self.timestamp = timestamp
    }
}
