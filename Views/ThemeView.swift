//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Farhana Mustafa on 10/15/22.
//

import SwiftUI

struct ThemeView: View {
    var theme: Theme
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 4)
                .fill(theme.mainColor)
            Label(theme.name, systemImage: "paintpalette")
                .padding(4)
        }
//        .foregroundColor(theme.accentColor)
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(theme: .magenta)
    }
}
