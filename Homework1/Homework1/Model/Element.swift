//
//  Element.swift
//  Homework1
//
//  Created by Ece Ayvaz on 11.09.2022.
//

import Foundation

struct DataClass: Codable {
    let coins : [CoinElement]
}

struct CoinElement: Codable {
    let symbol : String
    let shortName: String
    let name: String
    let price: String
    let rank: String
    
    init(symbol: String?, shortName: String?, name: String?, price: String?, rank: String?) {
        self.symbol = symbol ?? "Nothing"
        self.shortName = shortName ?? "Coin"
        self.name = name ?? "Coin Whole Name"
        self.price = price ?? "0"
        self.rank = rank ?? "0"
    }

}
