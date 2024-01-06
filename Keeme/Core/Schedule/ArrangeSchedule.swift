//
//  ArrangeSchedule.swift
//  Keeme
//
//  Created by Gunna Rahul on 23/12/23.
//

import SwiftUI

struct ArrangeSchedule: View {
    @State private var myTask = ""
    @State private var selectedDate : Date?
    @State private var isDatePickerVisible = false
    @State private var selectedTime = Date()
    @State private var isTimePickerVisible = false
    @State private var selectedHoursIndex = 0
    @State private var selectedMinutesIndex = 0

        let hours = Array(0...24)
        let minutes = Array(0...59)
    
    var body: some View {
        VStack{
            HStack{
                Text("Add Schedule").font(.title).bold()
                Spacer()
            }.padding(10)
            TextField("My Task",text:$myTask)
                .padding(10)
                    .frame(width:350,height:50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .padding(.bottom,10)
            TextField(selectedDate == nil ? "Select date" : "", text: Binding(
                            get: {
                                selectedDate.map { DateFormatter.localizedString(from: $0, dateStyle: .short, timeStyle: .none) } ?? ""
                            },
                            set: { newValue in
                                // Handle setting the date if needed
                            }
                        ))
                        .onTapGesture {
                            // Show the DatePicker when the text field is tapped
                            isDatePickerVisible.toggle()
                        }
                        .padding(10)
                            .frame(width:350,height:50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                            .padding(.bottom,10)

                        if isDatePickerVisible {
                            DatePicker("", selection: Binding(
                                get: { selectedDate ?? Date() },
                                set: { selectedDate = $0 }
                            ), displayedComponents: .date)
                                .labelsHidden()
                                .datePickerStyle(WheelDatePickerStyle())
                                .onTapGesture {
                                    // Hide the DatePicker when tapped outside
                                    isDatePickerVisible.toggle()
                                }
                                .transition(.opacity)
                        }

            TextField("Select a time", text: .constant(""))
                            .onTapGesture {
                                // Show the TimePicker when the text field is tapped
                                isTimePickerVisible.toggle()
                            }
                            .padding(10)
                                .frame(width:350,height:50)
                                .background(Color.black.opacity(0.05))
                                .cornerRadius(10)
                                .padding(.bottom,0)

                        if isTimePickerVisible {
                            DatePicker("", selection: $selectedTime, displayedComponents: .hourAndMinute)
                                .labelsHidden()
                                .datePickerStyle(WheelDatePickerStyle())
                                .onTapGesture {
                                    // Hide the TimePicker when tapped outside
                                    isTimePickerVisible.toggle()
                                }
                                .transition(.opacity)
                        }
            VStack {
                        TextField("Select Duration", text: .constant(""))
                            .pickerStyle(MenuPickerStyle())
                            .padding(10)
                            .frame(width:350,height:50)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                            .padding(.bottom,10)
                            

                    }
                    .padding()
            HStack{
                Text("Partner")
                Spacer()
            }.padding(.leading,20)
            
            HStack{
                Button(action: {
                    // Add action for button tap
                }) {
                    Text("Prefer Favourites ⭐️")
                        .padding()
                        .background(Color(hex: 0x0092C9))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .frame(width:200,height:40)
                        
                }
                Button(action: {
                    // Add action for button tap
                }) {
                    Text("Anyone 🌐")
                        .padding()
                        .background(.white)
                        .foregroundColor(.black)
                        .border(Color.black)
                        .cornerRadius(0)
                    
                }

            }
            
            

        }
        Spacer()
        
    }
    
}

extension Color {
    init(hex: Int) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 8) & 0xff) / 255,
            blue: Double(hex & 0xff) / 255,
            opacity: 1
        )
    }
}

#Preview {
    ArrangeSchedule()
}
