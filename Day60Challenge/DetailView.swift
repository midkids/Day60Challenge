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
        VStack(alignment: .leading, spacing: 7) {
            Text("Detailed User Information")
                .font(.title)
                .bold()
            Text("\(Text("Name:").bold()) \(user.name)")
            Text("\(Text("Status:").bold()) \(user.isActive ? "Active" : "Inactive")")
            Text("\(Text("Age:").bold()) \(user.age)")
            Text("\(Text("Company:").bold()) \(user.company)")
            Text("\(Text("Email:").bold()) \(user.email)")
            Text("\(Text("About:").bold()) \(user.about)")
            Text("\(Text("Registered:").bold()) \(user.registered, format: .dateTime.month().day().year())")
            Text("\(Text("Tags:").bold()) \(user.tags.joined(separator: ", "))")
        }
    }
}

#Preview {
    let example = User(id: UUID(), isActive: true, name: "Joe", age: 31, company: "Beluga", email: "whale@beluga.com", about: "Fred", registered: .now, tags: [], friends: [])
    DetailView(user: example)
}
