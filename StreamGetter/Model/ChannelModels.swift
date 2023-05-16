//
//  ChannelModels.swift
//  StreamGetter
//
//  Created by オナガ・ハルキ on 2023/05/16.
//

import Foundation

/// JSONファイルのitems.item.snippetをデコードした結果を保持する型
struct ChannelSnippet: Codable {
    let channelId: String
    let channelTitle: String
    let description: String
    let thumbnails: Thumbnails
    let liveBroadcastContent: String
    
    struct Thumbnails: Codable {
        let `default`: Thumbnail
        let medium: Thumbnail
        let high: Thumbnail
        
        struct Thumbnail: Codable {
            let url: String
        }
    }
}