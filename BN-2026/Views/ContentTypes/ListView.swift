//
//  ListView.swift
//  BN-2026
//
//  Created by Patryk Strzemiecki on 12/11/2020.
//

import SwiftUI

struct ListView: View {
    @ObservedObject var kittensModel: KittensModel
    
    init(kittensModel: KittensModel) {
        self.kittensModel = kittensModel
    }
    
    var body: some View {
        List(
            kittensModel.aLotOfKittens,
            children: \.children
        ) { kitten in
            KittenView(kitten: kitten)
                .frame(maxHeight: 50)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(
            kittensModel: KittensModel(
                numberOfCreations: 10
            )
        )
    }
}
