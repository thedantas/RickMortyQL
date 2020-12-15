//
//  CaractersTableViewCell.swift
//  RickMortyQL
//
//  Created by Andre Costa Dantas on 16/10/20.
//

import UIKit

class CaractersTableViewCell: UITableViewCell {

    @IBOutlet weak var imageCaracter: UIImageView!
    @IBOutlet weak var labelCaracter: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
