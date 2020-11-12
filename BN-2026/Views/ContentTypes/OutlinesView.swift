//
//  OutlinesView.swift
//  BN-2026
//
//  Created by Patryk Strzemiecki on 12/11/2020.
//

import SwiftUI

struct OutlinesView: View {
    @ObservedObject var kittensModel: KittensModel
    
    init(kittensModel: KittensModel) {
        self.kittensModel = kittensModel
    }
    
    var body: some View {
        ScrollView {
            Section(header: Text("Kittens")) {
                OutlineGroup(
                    kittensModel.aLotOfKittens,
                    children: \.children
                ) { kitten in
                    KittenView(kitten: kitten)
                        .frame(maxHeight: 30)
                        .listStyle(SidebarListStyle())
                }
            }
        }
    }
}

struct OutlinesView_Previews: PreviewProvider {
    static var previews: some View {
        OutlinesView(
            kittensModel: KittensModel(
                numberOfCreations: 10
            )
        )
    }
}
