//
//  CityCell.swift
//  1
//
//  Created by Дмитрий Алексеевич on 16.04.2022.
//

import UIKit

class CityCell: UITableViewCell {

    
    @IBOutlet weak var CityImageView: UIImageView!
    
    @IBOutlet weak var CityNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
