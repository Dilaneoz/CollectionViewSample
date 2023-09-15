//
//  FilmlerCollectionViewCell.swift
//  CollectionViewOrnek
//
//  Created by Dilan Öztürk on 21.02.2023.
//

import UIKit

class FilmlerCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var filmLabel: UILabel!
    
    
    func updateCell(film : Film){
        
        imageView.image = UIImage(named: film.movieImage)
        filmLabel.text = film.movieLabel
    }
    
    
    
}
