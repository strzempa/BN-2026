//
//  KittenView.swift
//  BN-2026
//
//  Created by Patryk Strzemiecki on 11/11/2020.
//

import SwiftUI

struct KittenView: View {
    var kitten: Kitten
    
    var body: some View {
        kitten.img
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct KittenView_Previews: PreviewProvider {
    static var previews: some View {
        KittenView(kitten: Kitten(id: UUID(), img: Image("300")))
    }
}
