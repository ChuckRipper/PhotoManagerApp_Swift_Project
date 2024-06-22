import SwiftUI

class UserViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var email: String = ""
    @Published var password: String = ""

    func register() {
        // Implement register logic
    }

    func login() {
        // Implement login logic
    }
}
