//
//  Theme.swift
//  Scrumdinger
//
//  Created by Farhana Mustafa on 10/10/22.
//

import SwiftUI

enum Theme: String {
    case indigo
    case magenta
    case orange
    case purple
    case teal
    case yellow
    
    var accentColor: Color {
        switch self {
        case .orange, .teal, .yellow: return .black
        case .indigo, .magenta, .purple: return .white
        }
    }
    
    var mainColor: Color {
        switch self {
        case .orange:
            return Color.orange
        case .teal:
            return Color.teal
        case .yellow:
            return Color.yellow
        case .indigo:
            return Color.indigo
        case .magenta:
            return Color.pink
        case .purple:
            return Color.purple
        }
    }
    
    var name: String {
        return rawValue.capitalized
    }
}
