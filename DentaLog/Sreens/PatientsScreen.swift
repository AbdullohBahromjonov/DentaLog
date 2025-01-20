//
//  PatientsScreen.swift
//  DentaLog
//
//  Created by Abdulloh Bahromjonov on 12/01/25.
//

import SwiftUI

struct PatientsScreen: View {
    @State var text = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.Denta.primary
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color.gray)
                        
                        TextField("Name or Phone number", text: $text)
                    }
                    .font(.system(size: 14))
                    .padding()
                    .frame(height: 44)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundColor(Color.Denta.secondary)
                    )
                    .padding()
                    
                    Rectangle()
                        .frame(height: 0.5)
                        .foregroundColor(.gray)
                    
                    ScrollView(showsIndicators: false) {
                        ForEach(1...15, id: \.self) { _ in
                            HStack {
                                Text("M")
                                    .padding()
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .medium))
                                    .background(
                                        Circle()
                                            .foregroundColor(.blue)
                                            .frame(width: 35, height: 35)
                                    )
                                
                                VStack(alignment: .leading) {
                                    Text("Abdulloh Bahromjonov")
                                        .font(.system(size: 14, weight: .bold))
                                    
                                    Text("+998 93 591-09-70")
                                        .font(.system(size: 11))
                                }
                                
                                Spacer()
                            }
                            .padding(.vertical, 2)
                            .padding(.horizontal, 6)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .foregroundColor(Color.Denta.secondary)
                            )
                        }
                        .padding()
                    }
                    
                    Button(
                        action: {},
                        label: {
                            Text("Import From Contacts")
                                .font(.system(size: 15, weight: .semibold))
                                .foregroundColor(.white)
                                .padding(15)
                                .frame(maxWidth: .infinity)
                                .background(
                                    Capsule()
                                        .foregroundColor(.Denta.accent)
                                )
                        }
                    )
                    .padding(15)
                    .background(
                        Color.Denta.secondary
                            .clipShape(.rect(topLeadingRadius: 25, topTrailingRadius: 25))
                            .ignoresSafeArea()
                    )
                    
                }
                .shadow(color: .gray.opacity(0.2), radius: 10)
            }
            .navigationTitle("Patients")
            .navigationBarItems(
                trailing: Button(
                    action: {},
                    label: {
                        Image(systemName: "plus.circle")
                    }
                )
            )
        }
    }
}

#Preview {
    PatientsScreen()
}
