//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Farhana Mustafa on 10/10/22.
//

import SwiftUI

/// Puts title first, then the icon. Labels are the opposite
struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    // Because you defined the label style as a static property, you can call it using leading-dot syntax, which makes your code more readable.
    static var trailingIcon: Self { Self() }
}
