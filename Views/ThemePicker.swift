//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by Farhana Mustafa on 10/15/22.
//

import SwiftUI

struct ThemePicker: View {
    // Communicate changes back to the parent view
    @Binding var selection: Theme
    
    var body: some View {
        Picker("Theme", selection: $selection) {
            ForEach(Theme.allCases) { theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
    }
}

struct ThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        ThemePicker(selection: .constant(.orange))
    }
}
