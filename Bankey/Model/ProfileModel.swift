//
//  ProfileModel.swift
//  Bankey
//
//  Created by Parinthon Puksuriwong on 6/4/2565 BE.
//

import Foundation

struct Profile: Codable {
    let id: String
    let firstName: String
    let lastName: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
    }
}
