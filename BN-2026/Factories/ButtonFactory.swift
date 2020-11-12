//
//  ButtonFactory.swift
//  BN-2026
//
//  Created by Patryk Strzemiecki on 12/11/2020.
//

import SwiftUI

enum ButtonFactory {
    static func allContentTypeButtons(
        action: @escaping (ContentType) -> Void
    ) -> [AnyView] {
        ContentType
            .allCases
            .map {
            ButtonFactory
                .make(
                    from: $0,
                    action: action
                )
            }
    }
}

private extension ButtonFactory {
    static func make(
        from type: ContentType,
        action: @escaping (ContentType) -> Void
    ) -> AnyView {
        AnyView(
            Button(action: {
                action(type)
            }) {
                Label(type.rawValue,
                      systemImage: type.sfSymbol())
                    .foregroundColor(type.color())
            }
        )
    }
}
