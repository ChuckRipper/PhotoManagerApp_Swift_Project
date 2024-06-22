import SwiftUI

struct AdminPanelView: View {
    @ObservedObject var viewModel = AdminViewModel()

    var body: some View {
        VStack {
            List(viewModel.users) { user in
                Text(user.username)
            }
            .onAppear {
                viewModel.fetchUsers()
            }
        }
        .padding()
    }
}
