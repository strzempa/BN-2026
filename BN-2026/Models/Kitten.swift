//
//  Kitten.swift
//  BN-2026
//
//  Created by Patryk Strzemiecki on 11/11/2020.
//

import SwiftUI

struct Kitten: Identifiable {
    var id: UUID
    var img: Image
    var children: [Kitten]?
}
