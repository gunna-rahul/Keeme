//
//  LoginView.swift
//  Keeme
//
//  Created by Gunna Rahul on 03/01/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    var body: some View {
        
        ZStack(alignment:.bottom){
            
         Color.pink.opacity(0.3)
                .ignoresSafeArea()
            HStack{
                VStack(alignment:.center){
                    Text("Login")
                    TextField("Email",text:$email).padding()
                        .frame(height:50)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                        .cornerRadius(3.0)
                    TextField("Email",text:$email).padding()
                        .frame(height:50)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                        .cornerRadius(3.0)
                    
                }
                Spacer()
                
            }
            
            .padding()
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .background(Color.primary.colorInvert().opacity(0.75))
            
////            Rectangle()
////              .foregroundColor(.clear)
////              .frame(width: 428, height: 596)
////              .background(.white)
////              .cornerRadius(90)
////            //.foregroundColor(.white.opacity(0.15))
//
        }
        
    }
}

#Preview {
    LoginView()
}
