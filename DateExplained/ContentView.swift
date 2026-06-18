//
    // Project: DateExplained
    //  File: ContentView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@noahdoescoding
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    
import SwiftUI
import Foundation
import Playgrounds

#Playground("Swift Dates") {
    // Get the user's current calendar (e.g. Gregorian)
    let calendar = Calendar.current
    
    // Create a Date instance representing "now"
    let today = Date()
    
    // Add one day to 'today' to get 'tomorrow'
    // .day is the calendar component we’re modifying
    // value: 1 means “add one day”
    // the exclamation mark (!) force unwraps the optional Date returned
    let tomorrow = calendar.date(byAdding: .day, value: 1, to: today)!
    
    // Extract the current hour (0–23) from today’s date
    let hour = calendar.component(.hour, from: today)
    
    // Print the full 'tomorrow' Date object (includes date + time info)
    print("Tomorrow:", tomorrow)
    
    // Print the current hour of the day
    print("Current Hour:", hour)
    
    // Create a relative date formatter
    // This displays phrases like “in 1 day” or “2 hours ago”
    let relative = RelativeDateTimeFormatter()
    
    // Generate a human-readable, relative string comparing tomorrow to today
    print(relative.localizedString(for: tomorrow, relativeTo: today))
    // Example output: “in 1 day”
    
    
    // Create a standard DateFormatter for custom formatting
    let formatter = DateFormatter()
    
    // Set the formatter’s time zone to GMT (0 hours offset)
    formatter.timeZone = TimeZone(secondsFromGMT: 0)
    
    // .long style shows full, readable date format
    // e.g., “October 28, 2025”
    formatter.dateStyle = .long
    
    // .short style shows a compact time format
    // e.g., “5:42 PM” (instead of “5:42:13 PM EDT”)
    formatter.timeStyle = .short
    
    // Set the locale to French (France)
    // This affects language and regional formatting of the output
    formatter.locale = Locale(identifier: "fr_FR")
    
    // Format the current date into a localized string
    let result = formatter.string(from: Date())
    
    // Print the formatted string (in French, with long date + short time)
    print(result)
    // Example output: “28 octobre 2025 à 17:42”
}

