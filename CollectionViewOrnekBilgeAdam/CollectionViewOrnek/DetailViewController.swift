//
//  DetailViewController.swift
//  CollectionViewOrnek
//
//  Created by Dilan Öztürk on 21.02.2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    var detayFilmAdi = ""
    var detayFilmResmi = ""

    @IBOutlet weak var detayImageView: UIImageView!
    @IBOutlet weak var detayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detayLabel.text = detayFilmAdi
        detayImageView.image = UIImage(named: detayFilmResmi)

    }
    

    
    
    
    
}
