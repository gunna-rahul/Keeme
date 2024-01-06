//
//  ScheduleView.swift
//  Keeme
//
//  Created by Gunna Rahul on 21/12/23.
//

import SwiftUI

struct ScheduleView: View {
    var body: some View {
        VStack{
            NavigationStack{
                ScrollView {
                    ScheduleHeading() 
                }
            }
            
            HStack{
                Spacer()
                Button(action: {
                                // Add your button action here
                                print("Button tapped!")
                            }) {
                                Image(systemName: "plus.circle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50, height: 50) // Adjust the size as needed
                                    .foregroundColor(.black) // Adjust the color as needed
                            }
            }.padding(.trailing,30)
            Spacer()
        }
        Spacer()
    }
}

#Preview {
    ScheduleView()
}
