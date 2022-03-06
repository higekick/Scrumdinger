//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by hige on 2022/02/23.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
               configuration.title
               configuration.icon
           }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIon: Self { Self() }
}

//
//extension LabelStyle {
//    static var trailingIon2: Any {TrailingIconLabelStyle()}
//}
