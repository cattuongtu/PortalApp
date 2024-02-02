//
//  ContentView.swift
//  PortalApp
//
//  Created by Cat-Tuong Tu on 2/2/24.
//

import SwiftUI

struct MeditationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
            VStack {
                // Header
                HStack {
                    Image("logo") // Replace with your logo
                    Text("clearspace")
                        .font(.headline)
                    Spacer()
                    Text("for what matters")
                        .font(.subheadline)
                }
                .padding()

                // Main Content
                VStack {
                    Text("be more present")
                        .font(.largeTitle)
                        .bold()
                    Text("forever is composed of nows")
                        .font(.title3)
                    // Progress Tracker
                    HStack {
                        ForEach(["S", "M", "T", "W", "T", "F", "S"], id: \.self) { day in
                            Rectangle()
                                .frame(width: 20, height: 10)
                                .foregroundColor(day == "T" ? .green : .gray) // Highlight current day
                        }
                    }
                    Text("1 day streak 🔥")
                }
                .padding()

                // Actionable Content
                HStack {
                    ForEach(0..<3, id: \.self) { index in
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(index == 0 ? .green : .gray)
                    }
                    Spacer()
                    Button(action: {
                        // Implement your action here
                    }) {
                        Text("opens today")
                    }
                }
                .padding()

                Spacer()

                // Floating Action Button over Tab Bar
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {
                            // Implement your action here
                        }) {
                            Image(systemName: "plus")
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                        }
                        .padding()
                    }
                }
                .frame(maxHeight: .infinity, alignment: .bottomTrailing)

                // Tab Bar
                TabView {
                    Text("Home Tab")
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                    
                    Text("Profile Tab")
                        .tabItem {
                            Image(systemName: "person.fill")
                            Text("Profile")
                        }
                }
            }
        }
}

#Preview {
    ContentView()
}
