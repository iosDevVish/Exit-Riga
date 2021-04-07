//
//  NewsTableViewCell.swift
//  EXIT RIGA
//
//  Created by vishal_singh on 06/04/21.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var newHeading: UILabel!
    @IBOutlet weak var newsImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}

