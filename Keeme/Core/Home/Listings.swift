//
//  Listings.swift
//  Keeme
//
//  Created by Gunna Rahul on 18/12/23.
//

import SwiftUI

struct Listings: View {
    var body: some View {
        
        VStack(spacing:-50){
            HStack{
                Image("rita")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50,height: 50)
                    .clipShape(Circle())
                VStack{
                    Text("Rita")
                        .font(.headline)
                        .frame(width: 305,alignment: .leading)
                        .foregroundColor(.black)
                    Text("Today I am starting to organize my notes in notion ")
                        .font(.caption)
                        .frame(width: 305,alignment: .leading)
                        .foregroundColor(.black)
                    Text("9:45am - 11:00am")
                        .font(.headline)
                        .frame(width: 305,alignment: .leading)
                        .foregroundColor(.blue)
                }
            }
            .padding()
            .frame(height:74)
            .overlay{
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth:1)
                    .foregroundColor(.black)
            }
            .padding(10)
        }
    }
}

        
        #Preview {
            Listings()
        }
