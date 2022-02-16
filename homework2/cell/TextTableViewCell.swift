//
//  TextTableViewCell.swift
//  homework2
//
//  Created by Дмитро Вакулінський on 02.11.2021.
//

import UIKit

class TextTableViewCell: UITableViewCell {
    @IBOutlet weak var textField: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    var post: textPost = .initial
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        likeButton.isSelected = post.isLiked
        textField.text = post.text

        }
        
    @IBAction func likeAction(_ sender: Any) {
        self.setNeedsLayout()
        post.isLiked.toggle()
        likeButton.setImage( UIImage( systemName: "hand.thumbsup.fill" ), for: .selected )
    }
}


