//
//  MeetingHeaderView.swift
//  Scrumdinger
//
//  Created by Farhana Mustafa on 10/16/22.
//

import SwiftUI

struct MeetingHeaderView: View {
    var secondsElapsed: Int
    var secondsRemaining: Int
    var scrum: DailyScrum
    
    private var totalSeconds: Int {
        return secondsElapsed + secondsRemaining
    }
    
    private var progress: Double {
        guard totalSeconds > 0 else { return 1 }
        return Double(secondsElapsed) / Double(totalSeconds)
    }

    var body: some View {
        VStack {
            ProgressView(value: progress)
                .progressViewStyle(ScrumProgressViewStyle(theme: scrum.theme))
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label(
                        String(secondsElapsed),
                        systemImage: "hourglass.bottomhalf.fill"
                    )
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    
                    Label(
                        String(secondsRemaining),
                        systemImage: "hourglass.tophalf.fill"
                    )
                    .labelStyle(.trailingIcon)
                }
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Time remaining")
        .accessibilityValue("\(secondsRemaining) seconds")
        .padding([.top, .horizontal])
    }
}

struct MeetingHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingHeaderView(
            secondsElapsed: 60,
            secondsRemaining: 80,
            scrum: DailyScrum.sampleData[2]
        )
        .previewLayout(.sizeThatFits)
    }
}
