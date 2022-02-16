//
//  textPost.swift
//  homework2
//
//  Created by Дмитро Вакулінський on 02.11.2021.
//

import Foundation
import UIKit

struct textPost{
    let text: String
    var isLiked: Bool
    
    static var initial = textPost(text: "", isLiked: false)
}
