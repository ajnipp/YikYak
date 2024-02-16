//  PostView.swift
//  YikYak
//
//  Created by AlecNipp on 2/15/24.
//

import SwiftUI

struct PostView: View {
    @State var post: Post
    var body: some View {
        HStack(alignment: .top) {
            VStack {
                Image(post.profilePic)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .clipShape(RoundedRectangle(cornerRadius: 4))
            }
            VStack(alignment: .leading) {
                HStack {
                    Text(post.community)
                        .bold()
                    Text("•")
                        .padding(.horizontal, -4)
                        .foregroundStyle(.secondary)
                    Text("\(post.timeString)")
                        .foregroundStyle(.secondary)
                    Spacer()
                    Image(systemName: "ellipsis")
                        .foregroundStyle(.secondary)
                }
                Text(post.text)
                if post.image != nil {
                    Image(post.image!)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                HStack {
                    Button {
                        post.comments += 1
                    } label: {
                        HStack {
                            Image(systemName: "message")
                            Text(post.comments == 0 ? "" : "\(post.comments)")
                        }
                    }
                    .foregroundStyle(.primary)
                    Button {} label: {
                        HStack {
                            Image(systemName: "paperplane")
                            Text(post.comments == 0 ? "" : "\(post.comments)")
                        }
                    }
                    .foregroundStyle(.primary)
                    Button {} label: {
                        HStack {
                            Image(systemName: "arrow.2.squarepath")
                                .rotationEffect(.degrees(90))
                            Text(post.comments == 0 ? "" : "\(post.comments)")
                        }
                    }
                    .foregroundStyle(.primary)
                    Button {} label: {
                        HStack {
                            Image(systemName: "arrowshape.turn.up.right")
                            Text(post.comments == 0 ? "" : "\(post.comments)")
                        }
                    }
                    .foregroundStyle(.primary)
                    Spacer()
                    HStack {
                        Button {
                            post.upvotes += 1
                        } label: {
                            Image(systemName: "arrow.up.circle.fill")
                                .imageScale(.large)
                        }
                        .tint(.gray)
                        Text("\(post.upvotes)")
                            .fontDesign(.rounded)
                            .bold()
                            .foregroundStyle(.mint)
                        Button {} label: {
                            Image(systemName: "arrow.down.circle.fill")
                                .imageScale(.large)
                        }
                        .tint(.gray)
                    }
                }
                .padding(.top, 3)
            }
        }
        .padding(.horizontal, 10)
    }
}

#Preview {
    PostView(post: .example)
}
