import SwiftUI

struct AlbumListView: View {
    @ObservedObject var viewModel = AlbumViewModel()

    var body: some View {
        List(viewModel.albums) { album in
            Text(album.title)
        }
        .onAppear {
            viewModel.fetchAlbums()
        }
    }
}
