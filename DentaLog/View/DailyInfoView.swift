//
//  DailyInfoView.swift
//  DentaLog
//
//  Created by Abdulloh Bahromjonov on 10/01/25.
//

import SwiftUI

struct DailyInfoView: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Text("Appointments:")
                
                Spacer()
                
                Text("10")
                    .fontWeight(.bold)
            }
            
            Divider()
            
            HStack {
                Text("Expected daily revenu:")
                
                Spacer()
                
                Text("$800")
                    .fontWeight(.bold)
            }
            
            HStack {
                Text("Actual daily revenu:")
                
                Spacer()
                
                Text("$450")
                    .fontWeight(.bold)
            }
        }
        .font(.system(size: 12))
        .padding()
        .background(Color.Denta.secondary)
        .cornerRadius(20)
    }
}

#Preview {
    ZStack {
        Color.Denta.primary
            .ignoresSafeArea()
        
        DailyInfoView()
            .padding()
    }
}
