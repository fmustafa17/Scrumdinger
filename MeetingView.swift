//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Farhana Mustafa on 10/10/22.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack(alignment: .leading) { // override the default behavior, which is center
                    Text("Seconds elapsed")
                        .font(.caption) // modifier
                    Label("300",
                          systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer() // use available space from the containing parent view
                VStack(alignment: .trailing) { // override the default behavior, which is center
                    Text("Seconds remaining")
                        .font(.caption)
                    Label("600",
                          systemImage: "hourglass.tophalf.fill")
                }
            }
            // By default, VoiceOver reads system names for the images
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time Remaining")
            .accessibilityValue("10 minutes")
            
            Circle()
                .strokeBorder(lineWidth: 24)
            
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityValue("Next speaker")
            }
        }
        .padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
