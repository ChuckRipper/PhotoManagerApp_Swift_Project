import SwiftUI

struct PhotoDetailView: View {
    @ObservedObject var viewModel = PhotoViewModel()
    var photo: Photo

    var body: some View {
        VStack {
            Text(photo.description)
            Button(action: {
                viewModel.delete(photo: photo)
            }) {
                Text("Delete")
            }
        }
        .padding()
    }
}
