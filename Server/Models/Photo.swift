import Fluent
import Vapor

final class Photo: Model, Content {
    static let schema = "photos"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "url")
    var url: String

    @Field(key: "description")
    var description: String

    @Parent(key: "album_id")
    var album: Album

    init() { }

    init(id: UUID? = nil, url: String, description: String, albumID: UUID) {
        self.id = id
        self.url = url
        self.description = description
        self.$album.id = albumID
    }
}
