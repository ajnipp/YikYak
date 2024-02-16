//
//  FeedView.swift
//  YikYak
//
//  Created by AlecNipp on 2/15/24.
//

import SwiftUI

struct FeedView: View {
    let feed: Feed
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(feed.posts) { post in
                    PostView(post: post)
                    Divider()
                        .padding(.vertical, 4)
                }
            }
            .scrollIndicators(.hidden)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        Image(systemName: "line.3.horizontal")
                        Text("Yik Yak")
                            .font(.title3)
                            .bold()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
                        Text("Unread")
                            .font(.headline)
                            .bold()
                        Text("Hot")
                            .font(.headline)
                            .foregroundStyle(.secondary)
                        Text("New")
                            .font(.headline)
                            .foregroundStyle(.secondary)
                    }
                }
            }
        }
    }
}

#Preview {
    FeedView(feed: .example)
}
