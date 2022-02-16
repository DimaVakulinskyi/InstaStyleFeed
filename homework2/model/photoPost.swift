//
//  photoPost.swift
//  homework2
//
//  Created by Дмитро Вакулінський on 02.11.2021.
//

import Foundation
import UIKit

struct photoPost {
    
    let image: UIImage
    let text: String
    var isLiked: Bool
    
    static var initial = photoPost(image: UIImage(), text: "", isLiked: false)
}
