//
//  DetailView.swift
//  Day60Challenge
//
//  Created by Myron Snelson on 9/20/26.
//

import SwiftUI

struct DetailView: View {
    let user: User
    var body: some View {
        Text("Name: \(user.name)")
    }
}

#Preview {
    let example = User(id: UUID(), isActive: true, name: "Joe", age: 31, company: "Beluga", email: "whale", about: "Fred", registered: .now, tags: [], friends: [])
    DetailView(user: example)
}
