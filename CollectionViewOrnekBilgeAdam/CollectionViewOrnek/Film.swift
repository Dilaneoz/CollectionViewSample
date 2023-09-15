//
//  Film.swift
//  CollectionViewOrnek
//
//  Created by Dilan Öztürk on 21.02.2023.
//

import Foundation


struct Film {
    
    var movieLabel : String
    var movieImage : String
    
    init(movieLabel: String, movieImage: String) {
        self.movieLabel = movieLabel
        self.movieImage = movieImage
    }
}
    
class setDataa {
    static let dataa = setDataa()
        
    let filmListesi = [
        Film(movieLabel: "Ananas", movieImage: "ananas"),
        Film(movieLabel: "Çilek", movieImage: "cilek"),
        Film(movieLabel: "Portakal", movieImage: "portakal"),
        Film(movieLabel: "Erik", movieImage: "erik")
    ]
        
    func dataGett() -> [Film]{
            
        return filmListesi
    }
               
        
}

