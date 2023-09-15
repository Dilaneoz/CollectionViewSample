//
//  ViewController.swift
//  CollectionViewOrnek
//
//  Created by Taner Kaya on 5.02.2023.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var seciliMeyveAdi = ""
    var seciliMeyveImage = ""
    
    @IBOutlet weak var meyvelerCollectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return setData.data.dataGet().count
        
    }
    
    //bu fonksiyon gizli bir for döngüsü varmış gibi çalışır, meyve listesindeki her bir eleman için. her bir satırda ne gösterileceğini söyler
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "meyvelerCell", for: indexPath) as? MeyvelerCollectionViewCell{
            
            let siradakiMeyve = setData.data.dataGet() [indexPath.row] // indexPath.row 0. elemanı temsil eder. array in içindeki 0. elemandan başlayarak bana ver
            
            cell.meyveAdi.text = siradakiMeyve.meyveName
            cell.meyveResmi.image = UIImage(named: siradakiMeyve.meyveImage)
            
            return cell
            
        }
        else{
            return MeyvelerCollectionViewCell() // eğer hiçbir şey bulamazsa MeyvelerCollectionViewCell tipinde boş bir nesne dönsün
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) { // tıkladığım elemanın olduğu sayfayı görüntüle
        
        let siradakiMeyve = setData.data.dataGet() [indexPath.row]
        
        seciliMeyveAdi = siradakiMeyve.meyveName
        seciliMeyveImage = siradakiMeyve.meyveImage
        
        performSegue(withIdentifier: "DetayaGit", sender: nil)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DetayaGit"{
            let detayVC = segue.destination as? DetayViewController
            
            detayVC?.detayMeyveAdi = seciliMeyveAdi
            detayVC?.detayResimAdi = seciliMeyveImage
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

