//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by hige on 2022/02/23.
//

import Foundation

struct DailyScrum: Identifiable{
    let id: UUID
//    var data: Data
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    var history: [History] = []
    
//    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
//        self.id = id
//        self.title = title
//        self.attendees = attendees.map{ Attendee(name: $0) }
//        self.lengthInMinutes = lengthInMinutes
//        self.theme = theme
//
    init(id: UUID = UUID(), data: Data) {
        self.id = id
        self.title = data.title
        self.attendees = data.attendees
        self.lengthInMinutes = Int(data.lengthInMinutes)
        self.theme = data.theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable{
        let id: UUID
        var name: String
        
        init (id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    struct Data {
        var title: String = ""
        var attendees: [Attendee] = []
        var lengthInMinutes: Double = 0.0
        var theme: Theme = .seafoam
    }
    
    var data: Data{
        Data(title: title, attendees: attendees, lengthInMinutes: Double(lengthInMinutes), theme: theme)
    }
    
    mutating func update(from data: Data) {
        self.title = data.title
        self.attendees = data.attendees
        self.lengthInMinutes = Int(data.lengthInMinutes)
        self.theme = data.theme
    }
    
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(
            data: Data(
                title: "Design",
                attendees: ["Cathy", "Daisy", "Simon", "Jonathan"].map{Attendee(name: $0)},
                lengthInMinutes: 10, theme: .yellow
            )
        ),
        DailyScrum(
            data: Data(
                title: "App Dev",
                attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"].map{Attendee(name: $0)},
                lengthInMinutes: 5, theme: .orange
            )
        ),
        DailyScrum(
            data: Data(
                title: "Web Dev",
                attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"].map{Attendee(name: $0)},
                lengthInMinutes: 5, theme: .poppy
            )
        ),
    ]
}
