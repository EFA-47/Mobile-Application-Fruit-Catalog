//
//  SubtitleText.swift
//  midterm_eayyildiz19
//
//  Created by Emir Fatih AYYILDIZ on 3.12.2023.
//

import SwiftUI

struct SubtitleText: View {

    private let text: String

    init(text: String) {
        self.text = text
    }

    var body: some View {
        Text(text)
            .font(.title3)
            .padding(Spacing.spacing_2)
    }
}

#Preview {
    SubtitleText(text: "Text")
}
