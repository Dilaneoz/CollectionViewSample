//
//  MeyvelerCollectionViewCell.swift
//  CollectionViewOrnek
//
//  Created by Taner Kaya on 5.02.2023.
//

import UIKit

// main de uicollectionview dan yukarı soldaki yere bağlantı kurmayı unutma
class MeyvelerCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var meyveResmi: UIImageView!
    @IBOutlet weak var meyveAdi: UILabel!
    
    
    func updateCell(meyve : Meyve){
        
        meyveResmi.image = UIImage(named: meyve.meyveImage)
        meyveAdi.text = meyve.meyveName
    }
}
