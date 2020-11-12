//
//  ContentType.swift
//  BN-2026
//
//  Created by Patryk Strzemiecki on 12/11/2020.
//

import SwiftUI

enum ContentType: String, CaseIterable {
    case lazyVStack
    case lazyVGrid
    case list
    case outlines
    case disclosure
    
    func sfSymbol() -> String {
        switch self {
        case .lazyVStack:
            return "c.circle.fill"
        case .lazyVGrid:
            return "centsign.square.fill"
        case .list:
            return "h.square"
        case .outlines:
            return "person.2.square.stack.fill"
        case .disclosure:
            return "square.stack.3d.down.right"
        }
    }
    
    func color() -> Color {
        switch self {
        case .lazyVStack:
            return .blue
        case .lazyVGrid:
            return .gray
        case .list:
            return .black
        case .outlines:
            return .yellow
        case .disclosure:
            return .red
        }
    }
    
    func view(from model: KittensModel) -> AnyView {
        switch self {
        case .lazyVStack:
            return AnyView(
                KittensScrollableLazyVStackView(
                    kittensModel: model
                )
            )
        case .lazyVGrid:
            return AnyView(
                KittensLazyVGridView(
                    kittensModel: model
                )
            )
        case .list:
            return AnyView(
                ListView(
                    kittensModel: model
                )
            )
        case .outlines:
            return AnyView(
                OutlinesView(
                    kittensModel: model
                )
            )
        case .disclosure:
            return AnyView(
                DisclosureView(
                    kittensModel: model
                )
            )
        }
    }
}
