//
//  ImageTableViewCell.swift
//  homework2
//
//  Created by Дмитро Вакулінський on 02.11.2021.
//

import UIKit

class ImageTableViewCell: UITableViewCell {

    @IBOutlet weak var photoField: UIImageView!
    @IBOutlet weak var textField: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    var post: photoPost = .initial
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        photoField.image = post.image
        likeButton.isSelected = post.isLiked
        textField.text = post.text
    }
    
    @IBAction func likeAction(_ sender: Any) {
        self.setNeedsLayout()
        post.isLiked.toggle()
        likeButton.setImage( UIImage( systemName: "hand.thumbsup.fill" ), for: .selected )
      //  (sender as AnyObject).setImage("hand.thumbsup.fill", for: .selected)
    }
    


}
