//
//  FrendViewCell.swift
//  1
//
//  Created by Дмитрий Алексеевич on 17.04.2022.
//

import UIKit

class FrendViewCell: UICollectionViewCell {
    
    //подключаем дату из ячейки
    @IBOutlet weak var dataLabel: UILabel!
    
    //подключаем температуру из ячейки
    @IBOutlet weak var TampLabel: UILabel!
    
    //подключаем картинку
    @IBOutlet weak var tampImage: UIImageView!
    
}
