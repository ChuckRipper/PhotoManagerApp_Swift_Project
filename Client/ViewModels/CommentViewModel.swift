import SwiftUI

class CommentViewModel: ObservableObject {
    @Published var comments: [Comment] = []
    @Published var newCommentText: String = ""

    func fetchComments(for photo: Photo) {
        // Implement fetch comments logic
    }

    func addComment(to photo: Photo) {
        // Implement add comment logic
    }
}
