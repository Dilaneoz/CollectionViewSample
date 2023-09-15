//
//  DetayViewController.swift
//  CollectionViewOrnek
//
//  Created by Dilan Öztürk on 11.02.2023.
//

import UIKit

class DetayViewController: UIViewController {
    
    var detayResimAdi = ""
    var detayMeyveAdi = ""
    
    @IBOutlet weak var detayImage: UIImageView!
    @IBOutlet weak var detayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detayLabel.text = detayMeyveAdi
        detayImage.image = UIImage(named: detayResimAdi)
    }
    

    

}
