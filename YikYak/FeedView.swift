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
        ScrollView {
            ForEach(feed.posts) { post in
                PostView(post: post)
                Divider()
                    .padding(.vertical, 4)
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    FeedView(feed: .example)
}
