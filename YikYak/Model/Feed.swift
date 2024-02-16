//
//  Feed.swift
//  YikYak
//
//  Created by AlecNipp on 2/15/24.
//

import Foundation

struct Feed {
    let posts: [Post]
    
    static var example: Feed {
        Feed(posts:
        [
            Post(id: 1, community: "UNC", profilePic: "unc-logo", timeString: "2h", image: "post-1", text: "Me, a broke college student after seeing a $100k necklace was lost on campus", upvotes: 279, comments: 0),
            Post(id: 2, community: "UNC", profilePic: "unc-logo", timeString: "3h", image: nil, text: "Why did my parents lie to me and say I'd have all this free time in college? this is just a constant grind.", upvotes: 159, comments: 2),
            Post(id: 3, community: "UNC", profilePic: "unc-logo", timeString: "4h", image: nil, text: "CLASS CRUSH REQUESTED TO ADD ME ON LINKEDIN LETS GOOOOOO", upvotes: 102, comments: 1),
            Post(id: 4, community: "UNC", profilePic: "unc-logo", timeString: "5h", image: "post-4", text: "fire bookbag ngl", upvotes: 157, comments: 6),
            
        ]
        )
    }
}

struct Post: Identifiable {
    let id: Int
    let community: String
    let profilePic: String
    let timeString: String
    let image: String?
    let text: String
    var upvotes: Int
    var comments: Int
    
    static var example: Post {
        Post(id: 1, community: "UNC", profilePic: "unc-logo", timeString: "4h", image: "post-1", text: "Me, a broke college student after seeing a $100k necklace was lost on campus", upvotes: 279, comments: 0)
    }
}

