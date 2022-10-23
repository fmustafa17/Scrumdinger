//
//  MeetingFooterView.swift
//  Scrumdinger
//
//  Created by Farhana Mustafa on 10/16/22.
//

import SwiftUI

struct MeetingFooterView: View {
    var speakers: [ScrumTimer.Speaker]
    var skipAction: () -> Void
    
    private var speakerNumber: Int? {
        guard let index = speakers.firstIndex(where: { !$0.isCompleted }) else { return nil}
        return index + 1
    }
    
    private var isLastSpeaker: Bool {
        //return speakers.dropLast().allSatisfy { $0.isCompleted }
        return speakers.dropLast().reduce(true) { $0 && $1.isCompleted }
    }
    
    private var speakerText: String {
        guard let speakerNumber = speakerNumber else { return "No more speakers" }
        return "Speaker \(speakerNumber) of \(speakers.count)"
    }
    
    var body: some View {
        VStack {
            HStack {
                if isLastSpeaker {
                    Text("Last Speaker")
                } else {
                    Text(speakerText)
                    Spacer()
                    Button(action: skipAction) {
                        Image(systemName: "forward.fill")
                    }
                    .accessibilityValue("Next speaker")
                }
            }
        }
        .padding([.bottom, .horizontal])
    }
}

struct MeetingFooterView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingFooterView(speakers: DailyScrum.sampleData[1].attendees.speakers, skipAction: {})
            .previewLayout(.sizeThatFits)
    }
}
