//
//  KittensModel.swift
//  BN-2026
//
//  Created by Patryk Strzemiecki on 11/11/2020.
//

import SwiftUI
import Foundation

class KittensModel: ObservableObject {
    @Published var aLotOfKittens: [Kitten] = []
    
    private var numberOfCreations: Int
    
    init(numberOfCreations: Int) {
        self.numberOfCreations = numberOfCreations
        
        produceKittens()
    }
    
    func produceKittens() {
        var elements: [Kitten] = []
        for _ in (0...numberOfCreations) {
            elements.append(contentsOf: KittensModel.makeKittensSection().shuffled())
        }
        self.aLotOfKittens = elements
    }
    
    func shuffle() {
        aLotOfKittens.shuffle()
    }
    
    private static func makeKittensSection() -> [Kitten] {
        [
            Kitten(id: UUID(), img: Image("300")),
            Kitten(id: UUID(), img: Image("301")),
            Kitten(id: UUID(), img: Image("302")),
            Kitten(id: UUID(), img: Image("303")),
            Kitten(id: UUID(), img: Image("304")),
            Kitten(id: UUID(), img: Image("306")),
            Kitten(id: UUID(), img: Image("307")),
            Kitten(id: UUID(), img: Image("308")),
            Kitten(id: UUID(), img: Image("309")),
            Kitten(id: UUID(), img: Image("310"))
        ]
    }
}
