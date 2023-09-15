//
//  Meyve.swift
//  CollectionViewOrnek
//
//  Created by Taner Kaya on 5.02.2023.
//

import Foundation

// struct lar steak te durur(daha hızlı erişim sağlar), classlar heat te. ne zaman class ne zaman struct kullanılacağı : struct ları daha hızlı erişim sağlamak istediğimizde kullanırız, class ları da nesnesinin tekilliğini sağlamak için kullanıyoruz (singleton design pattern), class lar her seferinde yeni nesne oluştursun istemiyoruz

struct Meyve {
    
    var meyveImage : String
    var meyveName : String
    
    init(meyveImage: String, meyveName: String) {
        self.meyveImage = meyveImage
        self.meyveName = meyveName
    }
    
}

// singleton design pattern
class setData {
    static let data = setData()
    
    let meyveListesi =
    [
        Meyve(meyveImage: "ananas", meyveName: "Ananas"),
        Meyve(meyveImage: "cilek", meyveName: "Cilek"),
        Meyve(meyveImage: "domates", meyveName: "Domates"),
        Meyve(meyveImage: "erik", meyveName: "Erik")
    ]
    
    
    //icine meyve tipinde veri alan bir array doner
    func dataGet() -> [Meyve]{
        
        return meyveListesi
    }
    
}
