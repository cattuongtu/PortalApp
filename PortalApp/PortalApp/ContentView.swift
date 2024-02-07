//
//  ContentView.swift
//  PortalApp
//
//  Created by Cat-Tuong Tu on 2/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {
                // Header
                HStack {
                    Image("logo") // Replace with your logo
                    Text("PORTAL")
                        .font(.headline)
                        .bold()
                }
                .padding()

                // Main Content
                VStack {
                    Text("Disconnect to reconnect.")
                        .font(.largeTitle)
                    
                }
                .padding()

                // Actionable Content
                HStack {
                    
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
                            Text("Add new app")
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
