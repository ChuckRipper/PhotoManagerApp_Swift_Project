import SwiftUI

class AdminViewModel: ObservableObject {
    @Published var users: [User] = []

    func fetchUsers() {
        // Implement fetch users logic
    }
}
