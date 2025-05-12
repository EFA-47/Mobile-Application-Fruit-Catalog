//
//  LinkText.swift
//  midterm_eayyildiz19
//
//  Created by Emir Fatih AYYILDIZ on 3.12.2023.
//

import SwiftUI

struct LinkText: View {

    let text: String

    init(text: String) {
        self.text = text
    }

    var body: some View {
        Text(text)
    }
}

#Preview {
    LinkText(text: "Test")
}
