//
//  ScrollExampleView.swift
//  Lists
//
//  Created by Rahul Shah on 17/05/25.
//

import SwiftUI

struct ScrollExampleView: View {
    var body: some View {
        ScrollView {
            Text("Paragraph is here for Scroll View")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.red)
            Divider()
            Text("At long last. On a warm Friday evening in Doha, his long locks held back by the trademark headband, world champion Neeraj Chopra broke the barrier that had been weighing him down for a long time, logging a memorable 90.23m throw to break his own national record and enter an elite club of spearmen.")
                
        }
        .padding(20)
    }
}

#Preview {
    ScrollExampleView()
}

