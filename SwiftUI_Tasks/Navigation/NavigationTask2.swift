//
//  NavigationTask2.swift
//  SwiftUI_Tasks
//
//  Created by Tahir Awan on 24/11/2026.
//

import SwiftUI

struct NavigationTask2: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            HomeView {
                path.append("settings")
            }
            .navigationDestination(for: String.self) { screen in
                if screen == "settings" {
                    SettingsView {
                        path.append("profile")
                    }
                } else if screen == "profile" {
                    ProfileNewView {
                        path = NavigationPath()
                    }
                }
            }
        }
    }
}




struct HomeView: View {
    let onGoToSettings: () -> Void
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Home View")
                .font(.largeTitle.bold())
            
            Button("Go to Settings", action: onGoToSettings)
                .buttonStyle(.borderedProminent)
        }
        .navigationTitle("Home")
    }
}

struct SettingsView: View {
    let onGoToProfile: () -> Void
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Settings View")
                .font(.largeTitle.bold())
            
            Button("Go to Profile", action: onGoToProfile)
                .buttonStyle(.borderedProminent)
        }
        .navigationTitle("Settings")
    }
}

struct ProfileNewView: View {
    let onGoToHome: () -> Void
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Profile View")
                .font(.largeTitle.bold())
            
            Button("Go to Home", action: onGoToHome)
                .buttonStyle(.borderedProminent)
        }
        .navigationTitle("Profile")
    }
}


#Preview {
    NavigationTask2()
}

/*
 
 
 Create a `NavigationStack` with three views: `HomeView`, `ProfileView`, and `SettingsView`.
 Add a button on the `HomeView` labeled "Go to Settings."
 Add a button on `SettingsView` labeled "Go to Profile."
 Add a button on `ProfileView` labeled "Go to Home."
 Upon clicking the "Go to settings" button, programmatically navigate to the `SettingsView` using the path property for state-driven navigation.
 Upon clicking the "Go to profile" button, programmatically navigate to the `ProfileView` using the path property for state-driven navigation.
 Upon clicking the "Go to Home" button, programmatically navigate to the `HomeView` using the path property for state-driven navigation.

 
 */
