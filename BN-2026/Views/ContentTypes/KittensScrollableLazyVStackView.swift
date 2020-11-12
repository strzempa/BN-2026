//
//  KittensScrollableLazyVStackView.swift
//  BN-2026
//
//  Created by Patryk Strzemiecki on 11/11/2020.
//

import SwiftUI

struct KittensScrollableLazyVStackView: View {
    @ObservedObject var kittensModel: KittensModel
    
    init(kittensModel: KittensModel) {
        self.kittensModel = kittensModel
    }
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
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

struct KittensScrollableLazyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        KittensScrollableLazyVStackView(
            kittensModel: KittensModel(
                numberOfCreations: 10
            )
        )
    }
}
