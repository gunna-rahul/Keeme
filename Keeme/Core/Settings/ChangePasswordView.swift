//
//  ChangePasswordView.swift
//  Keeme
//
//  Created by Gunna Rahul on 03/01/24.
//

import SwiftUI



struct ChangePasswordView: View {
    @State private var oldPassword = ""
    @State private var newPassword = ""
    @State private var confirmPassword = ""
    
    var body: some View {
        VStack(alignment: .center){
            HStack{
                Text("Change password")
                  .font(
                    .title     
                    .bold()
                  )
                  .foregroundColor(.black)
                Spacer()
            }.padding(.leading,20)
            HStack{
                Image("lauren")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
            }.padding(.bottom,20)
            VStack{
                SecureField("Old Password",text:$oldPassword)
                    .padding(10)
                    .frame(width:300,height:50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                SecureField("New Password",text:$newPassword)
                    .padding(10)
                    .frame(width:300,height:50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                SecureField("Confirm Password",text:$confirmPassword)
                    .padding(10)
                    .frame(width:300,height:50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
            }
            VStack(alignment:.center){
                HStack(alignment: .center){
                    NavigationLink(destination:SettingsView()){
                        Button(action: {
                                    // Code to be executed when the button is tapped
                                    print("Button tapped!")
                        }) {
                                    Text("Change Password")
                                        .padding(10)
                                        .background(Color.black)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                        }
                    }
                    
                }
            }.frame(alignment: .center).padding(.top,30)
            Spacer()
        }
    }
}

#Preview {
    ChangePasswordView()
}
