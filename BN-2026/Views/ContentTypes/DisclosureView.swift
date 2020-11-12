//
//  DisclosureView.swift
//  BN-2026
//
//  Created by Patryk Strzemiecki on 12/11/2020.
//

import SwiftUI

struct DisclosureView: View {
    @ObservedObject var kittensModel: KittensModel
    @State var isExpanded: Bool = Bool.random()
    @State var isOn1: Bool = Bool.random()
    @State var isOn2: Bool = Bool.random()
    @State var isOn3: Bool = Bool.random()
    @State var isOn4: Bool = Bool.random()
    
    init(kittensModel: KittensModel) {
        self.kittensModel = kittensModel
    }
    
    var body: some View {
        Form {
            DisclosureGroup("Group", isExpanded: $isExpanded) {
                Toggle("toggle 1", isOn: $isOn1)
                Toggle("toggle 2", isOn: $isOn2)
                Toggle("toggle 3", isOn: $isOn3)
                Toggle("toggle 4", isOn: $isOn4)
            }
        }
    }
}

struct DisclosureView_Previews: PreviewProvider {
    static var previews: some View {
        OutlinesView(
            kittensModel: KittensModel(
                numberOfCreations: 10
            )
        )
    }
}
