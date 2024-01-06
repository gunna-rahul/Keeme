//
//  HomeScheduleBar.swift
//  Keeme
//
//  Created by Gunna Rahul on 21/12/23.
//

import SwiftUI

struct HomeScheduleBar: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 2 ){
                Text("Scheduled")
                    .font(.system(size:18,weight: .medium,design: .default))
                Text("Studying with Rita")
                    .font(.system(size:14,weight: .medium,design: .default))
                Text("11:40 am to 12:40 pm")
                    .font(.system(size:14,weight: .medium,design: .default))
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            .padding()
            Spacer()
            
            Button(action: {}, label: {
                Text("Join Now")
            })
            .padding()
        }
        .frame(height:74)
        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
        .overlay{
            RoundedRectangle(cornerRadius: 8)
                .stroke(lineWidth:1)
                .foregroundColor(.pink)
        }
        .padding()
        Spacer()
    }
}

#Preview {
    HomeScheduleBar()
}
