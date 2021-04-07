//
//  CatDetailTableViewCell.swift
//  EXIT RIGA
//
//  Created by vishal_singh on 06/04/21.
//

import UIKit

class CatDetailTableViewCell: UITableViewCell {
    @IBOutlet weak var catImage: UIImageView!
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var catheading: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func likeBtn(_ sender: UIButton) {
        if likeButton.tag == 0 {
            likeButton.setImage(UIImage(named: "Path 8587"), for: .normal)
            likeButton.tag = 1
        }else{
            likeButton.setImage(UIImage(named: "Path 8588"), for: .normal)
            likeButton.tag = 0
        }
    }
}
