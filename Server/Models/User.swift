import Fluent
import Vapor

final class User: Model, Content {
    static let schema = "users"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "username")
    var username: String

    @Field(key: "email")
    var email: String

    @Field(key: "password")
    var password: String

    @Field(key: "role")
    var role: String

    init() { }

    init(id: UUID? = nil, username: String, email: String, password: String, role: String) {
        self.id = id
        self.username = username
        self.email = email
        self.password = password
        self.role = role
    }
}