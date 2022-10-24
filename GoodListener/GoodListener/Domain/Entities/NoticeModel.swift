//
//  NoticeModel.swift
//  GoodListener
//
//  Created by Jiyoung Park on 2022/10/24.
//

import Foundation

struct NoticeModel: Codable {
    var data: [dataModel]
}

struct dataModel: Codable{
    var id: Int
    var userFcm: String
    var title: String
    var content: String
    var isRead: Bool
    var hash: String
    var flag: String
    var createdAt: String
    var updatedAt: String
}
