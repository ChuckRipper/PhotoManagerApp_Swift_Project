import SwiftUI

struct RegisterView: View {
    @ObservedObject var viewModel = UserViewModel()

    var body: some View {
        VStack {
            TextField("Username", text: $viewModel.username)
            TextField("Email", text: $viewModel.email)
            SecureField("Password", text: $viewModel.password)
            Button(action: {
                viewModel.register()
            }) {
                Text("Register")
            }
        }
        .padding()
    }
}
