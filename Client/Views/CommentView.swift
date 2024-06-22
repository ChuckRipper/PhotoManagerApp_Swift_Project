import SwiftUI

struct CommentView: View {
    @ObservedObject var viewModel = CommentViewModel()
    var photo: Photo

    var body: some View {
        VStack {
            List(viewModel.comments) { comment in
                Text(comment.text)
            }
            TextField("Add a comment", text: $viewModel.newCommentText)
            Button(action: {
                viewModel.addComment(to: photo)
            }) {
                Text("Add Comment")
            }
        }
        .onAppear {
            viewModel.fetchComments(for: photo)
        }
        .padding()
    }
}
