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
        VStack(spacing: 3) {
            Text("Detailed User Information")
                .font(.title)
            Text("Name: \(user.name)")
            Text(user.isActive ? "Status: Active" : "Status: Inactive")
            Text("Age: \(user.age)")
            Text("Company: \(user.company)")
            Text("Email: \(user.email)")
            Text("About: \(user.about)")
            Text("Registered: \(user.registered, format: .dateTime.month().day().year())")
        }
    }
}

#Preview {
    let example = User(id: UUID(), isActive: true, name: "Joe", age: 31, company: "Beluga", email: "whale@beluga.com", about: "Fred", registered: .now, tags: [], friends: [])
    DetailView(user: example)
}
