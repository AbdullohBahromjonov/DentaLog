//
//  AppointmentCardView.swift
//  DentaLog
//
//  Created by Abdulloh Bahromjonov on 09/01/25.
//

import SwiftUI

struct AppointmentCardView: View {
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 5) {
                Text("Abdulloh Bahromjonov")
                    .font(.system(size: 14))
                
                Text("Composite Filling – Upper Left Second Molar (Tooth #14)")
                    .font(.system(size: 10))
                    .frame(width: UIScreen.main.bounds.size.width/2, alignment: .leading)
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 5) {
                Text("09:30")
                    .font(.system(size: 16, weight: .bold))
                
                Text("NEW")
                    .foregroundColor(.white)
                    .font(.system(size: 10, weight: .bold))
                    .padding(5)
                    .padding(.horizontal, 5)
                    .background(
                        Capsule()
                            .foregroundColor(.accent)
                    )
            }
        }
        .padding(13)
        .background(
            RoundedRectangle(cornerRadius: 18)
                .foregroundColor(.Denta.secondary)
        )
    }
}

#Preview {
    ZStack {
        Color.Denta.primary
            .ignoresSafeArea()
        
        AppointmentCardView()
            .padding()
    }
}
