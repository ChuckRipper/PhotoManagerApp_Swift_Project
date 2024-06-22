import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel = UserViewModel()

    var body: some View {
        VStack {
            TextField("Username", text: $viewModel.username)
            SecureField("Password", text: $viewModel.password)
            Button(action: {
                viewModel.login()
            }) {
                Text("Login")
            }
        }
        .padding()
    }
}
