//
//  HomeScreen.swift
//  DentaLog
//
//  Created by Abdulloh Bahromjonov on 09/01/25.
//

import SwiftUI

struct HomeScreen: View {
    @StateObject var viewModel = HomeViewModel()
    
    enum WeekDays: Int, CaseIterable, Identifiable {
        case monday
        case tuesday
        case wednesday
        case thursday
        case friday
        case saturday
        case sunday
        
        var id: Int { return self.rawValue }
        
        var name: String {
            switch self {
            case .monday:
                return "Mon"
            case .tuesday:
                return "Tue"
            case .wednesday:
                return "Wed"
            case .thursday:
                return "Thu"
            case .friday:
                return "Fri"
            case .saturday:
                return "Sat"
            case .sunday:
                return "Sun"
            }
        }
    }
    
    var dateFormatter = DateFormatter()
    
    init() {
        dateFormatter.dateFormat = "MMMM yyyy"
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.Denta.primary
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    VStack {
                        VStack {
                            HStack(alignment: .bottom) {
                                Text(dateFormatter.string(from: Date()))
                                    .font(.system(size: 20, weight: .bold))
                                
                                Spacer()
                                
                                Text("Appointments: \(viewModel.appointmentsByDate.count)")
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            
                            Divider()
                            
                            HStack {
                                ForEach(WeekDays.allCases) { day in
                                    VStack(spacing: 20) {
                                        Text(day.name)
                                            .font(.system(size: 12))
                                        Text("\(day.rawValue + 1)")
                                            .font(.system(size: 16, weight: .bold))
                                    }
                                    .foregroundColor(day.id == 2 ? .white : Color(uiColor: .darkText))
                                    .padding(.vertical, 10)
                                    .frame(maxWidth: .infinity)
                                    .background(
                                        RoundedRectangle(cornerRadius: 8)
                                            .foregroundColor(day.id == 2 ? .Denta.accent : .clear)
                                    )
                                }
                            }
                        }
                        .padding()
                        .background(Color.Denta.secondary)
                        .cornerRadius(20)
                    }
                    .padding()
                    
                    Divider()
                    
                    ScrollView(showsIndicators: false) {
                        ForEach(viewModel.appointmentsByDate) { appointment in
                            AppointmentCardView(appointment: appointment)
                        }
                        .padding()
                    }
                }
            }
            .task {
                viewModel.getAppointmentsBy(date: Date())
            }
        }
        .environmentObject(viewModel)
    }
}

#Preview {
    HomeScreen()
        .environmentObject(HomeViewModel())
}
