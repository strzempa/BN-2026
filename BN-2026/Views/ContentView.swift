//
//  ContentView.swift
//  BN-2026
//
//  Created by Patryk Strzemiecki on 11/11/2020.
//

import SwiftUI

enum ContentType {
    case lazyVStack
    case lazyVGrid
}

struct ContentView: View {
    private let contentType: ContentType = .lazyVGrid
    
    var body: some View {
        switch contentType {
        case .lazyVStack:
            KittensScrollableLazyVStackView(
                kittensModel: KittensModel(
                    numberOfCreations: 22
                )
            )
        case .lazyVGrid:
            KittensLazyVGridView(
                kittensModel: KittensModel(
                    numberOfCreations: 333
                )
            )
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
