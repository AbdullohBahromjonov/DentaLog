//
//  HomeScreen.swift
//  DentaLog
//
//  Created by Abdulloh Bahromjonov on 09/01/25.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.Denta.primary
                    .ignoresSafeArea()
                
                VStack {
                    DailyInfoView()
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                        .padding(.horizontal)
                    
                    ScrollView(showsIndicators: false) {
                        ForEach(1...10, id: \.self) { _ in
                            AppointmentCardView()
                        }
                        .padding()
                    }
                    .padding(.top, -8)
                }
            }
        }
    }
}

#Preview {
    HomeScreen()
}

extension Color {
    enum Denta {
        static let primary = Color("Primary")
        static let secondary = Color("Secondary")
        static let accent = Color("Accent")
        static let green = Color("Green")
        static let red = Color("Red")
    }
}
