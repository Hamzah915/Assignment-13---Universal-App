//
//  TableViewCell.swift
//  UniversalApp
//
//  Created by Hamzah Azam on 19/04/2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var productsTitle: UILabel!
    @IBOutlet var productsImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
