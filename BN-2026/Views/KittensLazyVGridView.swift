//
//  KittensLazyVGridView.swift
//  BN-2026
//
//  Created by Patryk Strzemiecki on 11/11/2020.
//

import SwiftUI

struct KittensLazyVGridView: View {
    @ObservedObject var kittensModel: KittensModel
    
    private var columns = [
        GridItem(spacing: 0),
        GridItem(spacing: 0),
        GridItem(spacing: 0)
    ]
    
    init(kittensModel: KittensModel) {
        self.kittensModel = kittensModel
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 0) {
                ForEach(kittensModel.aLotOfKittens) { kitten in
                    KittenView(kitten: kitten)
                        .overlay(
                        Button(action: {
                            kittensModel.produceKittens()
                        }) {
                            Label("Shuffle",
                                  systemImage: "shuffle")
                                .foregroundColor(.white)
                        }
                    )
                }
            }
        }
    }
}

struct KittensLazyVGridView_Previews: PreviewProvider {
    static var previews: some View {
        KittensScrollableLazyVStackView(
            kittensModel: KittensModel(
                numberOfCreations: 10
            )
        )
    }
}
