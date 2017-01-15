//
//  PostCell.swift
//  SocialMediaApp
//
//  Created by YC on 1/13/17.
//  Copyright © 2017 Cakmak LLC. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var caption: UITextView!
    @IBOutlet weak var likesLbl: UILabel!

    var post:Post!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    func configureCell(post:Post){
        self.post = post
        self.caption.text = post.caption
        self.likesLbl.text = "\(post.likes)"
    }
    
    
    
}
