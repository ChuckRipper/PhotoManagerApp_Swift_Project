import SwiftUI

struct PhotoListView: View {
    @ObservedObject var viewModel = PhotoViewModel()

    var body: some View {
        List(viewModel.photos) { photo in
            Text(photo.description)
        }
        .onAppear {
            viewModel.fetchPhotos()
        }
    }
}
