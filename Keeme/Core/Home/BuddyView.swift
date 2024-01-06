//
//  BuddyView.swift
//  Keeme
//
//  Created by Gunna Rahul on 19/12/23.
//

import SwiftUI

struct BuddyView: View {
    @State private var isSlotBooked = false
    var body: some View {
        ScrollView{
            HStack{
                Image("rita")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 175,height: 175)
                    .clipShape(Circle())
                    .padding()
            }
            HStack{
                Text("Rita")
                    .font(.system(size:25,weight: .medium,design: .default))
                    .padding()
            }
            HStack{
                Button(action:{},label:{
                    Text("Add to Favourites")
                Image(systemName:"star.fill") })
                .padding()}
            .frame(height:40)
            .overlay{
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth:1)
            }
            VStack{
                VStack{
                    Text("Today's Goal")
                        .font(.headline)
                        .frame(width: 300,alignment: .leading)
                    Text("Today I am starting to organize my notes in notion ")
                        .font(.caption)
                        .frame(width: 300,alignment: .leading)
                }
                .padding()
                HStack{
                    Button(action: {
                                     // Toggle the booking status
                                     isSlotBooked.toggle()
                                 }) {
                                     if isSlotBooked {
                                         Text("Booked")
                                     } else {
                                         Text("Book the Slot")
                                     }
                                 }
                }
                HStack{
                    Text("or")
                }
                HStack{
                    Button(action:{},label:{
                        Text("Chat with")
                     })
                }
                }
            .frame(height: 150)
            .chartXAxis(.hidden)
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .shadow(radius: 10)
            .padding()
            }
        }
    }


#Preview {
    BuddyView()
}
