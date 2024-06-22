import SwiftUI

class AlbumViewModel: ObservableObject {
    @Published var albums: [Album] = []

    func fetchAlbums() {
        // Implement fetch albums logic
    }
}
