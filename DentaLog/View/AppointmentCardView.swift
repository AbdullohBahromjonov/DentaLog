//
//  AppointmentCardView.swift
//  DentaLog
//
//  Created by Abdulloh Bahromjonov on 09/01/25.
//

import SwiftUI

struct AppointmentCardView: View {
    let appointment: Appointment
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 5) {
                Text("\(appointment.patient.name) \(appointment.patient.surname)")
                    .font(.system(size: 14))
                
                Text(appointment.treatment)
                    .font(.system(size: 10))
                    .frame(width: UIScreen.main.bounds.size.width/2, alignment: .leading)
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 5) {
                Text(appointment.time)
                    .font(.system(size: 16, weight: .bold))
                
                Text(appointment.state.name)
                    .foregroundColor(.white)
                    .font(.system(size: 10, weight: .bold))
                    .padding(5)
                    .padding(.horizontal, 5)
                    .background(
                        Capsule()
                            .foregroundColor(appointment.state.color)
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
        
        AppointmentCardView(
            appointment: Appointment(
                patient: Patient(name: "Abdulloh", surname: "Bahromjonov", phoneNumber: "+998 93 591 09 70", gender: .male),
                state: .done,
                treatment: "Composite Filling – Upper Left Second Molar (Tooth #14)",
                time: "9:30",
                date: Date()
            )
        )
            .padding()
    }
}
