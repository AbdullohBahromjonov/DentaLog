//
//  MainScreen.swift
//  DentaLog
//
//  Created by Abdulloh Bahromjonov on 12/01/25.
//

import SwiftUI

struct MainScreen: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color.Denta.secondary)
    }
    
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Label(
                        "Home",
                        systemImage: "house"
                    )
                }
            
            PatientsScreen()
                .tabItem {
                    Label(
                        "Patients",
                        systemImage: "person.2"
                    )
                }
            
            Text("Settings")
                .tabItem {
                    Label(
                        "Settings",
                        systemImage: "gearshape"
                    )
                }
        }
    }
}

#Preview {
    MainScreen()
}
