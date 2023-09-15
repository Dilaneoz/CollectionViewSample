//
//  FilmlerViewController.swift
//  CollectionViewOrnek
//
//  Created by Dilan Öztürk on 21.02.2023.
//

import UIKit

class FilmlerViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var seciliFilmAdi = ""
    var seciliFilmResmi = ""
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return setDataa.dataa.dataGett().count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmlerCell", for: indexPath) as? FilmlerCollectionViewCell{
            
            let siradakiFilm = setDataa.dataa.dataGett() [indexPath.row]
            
            cell.filmLabel.text = siradakiFilm.movieLabel
            cell.imageView.image = UIImage(named: siradakiFilm.movieImage)
            
            return cell
            
        }
        else{
            return FilmlerCollectionViewCell()
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let siradakiFilm = setDataa.dataa.dataGett() [indexPath.row]
        
        seciliFilmAdi = siradakiFilm.movieLabel
        seciliFilmResmi = siradakiFilm.movieImage
        
        performSegue(withIdentifier: "secondVC", sender: nil)
        
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
        if segue.identifier == "secondVC" {
            let detayVC = segue.destination as? DetailViewController
                
            detayVC?.detayFilmAdi = seciliFilmAdi
            detayVC?.detayFilmResmi = seciliFilmResmi
        }
            
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
        
       
    
}
