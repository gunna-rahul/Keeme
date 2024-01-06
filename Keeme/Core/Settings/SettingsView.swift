//
//  SettingsView.swift
//  Keeme
//
//  Created by Gunna Rahul on 03/01/24.
//

import SwiftUI

struct SettingsView: View {
    @State private var isToggleOnForNotifications = false
    @State private var isToggleOnForAppNotifications = false
    var body: some View {
            VStack(alignment:.leading){
                Text("Settings")
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                HStack{
                    Image(systemName: "person")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                                
                    Text("Account")
                        .font(.headline)
                    Spacer()
                }
                Divider()
                
                    HStack(){
                        Text("Edit Profile")
                        Spacer()
                        NavigationLink(destination:EditProfileView()){
                            Image(systemName: "chevron.right")
                                .font(.title)
                                .padding()
                                .background(Color.white)
                                .foregroundColor(.black)
                                .clipShape(Circle())
                        }
                    }
                
                
                HStack(){
                    Text("Change Password")
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.title)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .clipShape(Circle())
                }
                HStack{
                    Image(systemName: "bell")
                        .resizable()
                        .font(.title)
                        .foregroundColor(.black)
                        .frame(width: 20, height: 20)
                        .aspectRatio(contentMode: .fit)
                    Text("Notifications").font(.headline)
                }
                Divider()
                VStack{
                    Toggle("Notifications",isOn: $isToggleOnForNotifications)
                        .padding(.bottom,20)
                    Toggle("App Notifications",isOn: $isToggleOnForAppNotifications)
                }
                .padding(.bottom,20)
                HStack{
                    Image(systemName: "ellipsis.circle")
                        .resizable()
                        .font(.title)
                        .foregroundColor(.black)
                        .frame(width: 20, height: 20)
                    Text("More").font(.headline)
                }
                Divider()
                HStack{
                    Text("Language")
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.title)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .clipShape(Circle())
                }
                HStack{
                    Text("Country")
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.title)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.black)
                        .clipShape(Circle())
                }
            }.padding(20)
        Spacer()
        VStack(alignment:.center){
            HStack(alignment: .center){
                Button(action: {
                            // Code to be executed when the button is tapped
                            print("Button tapped!")
                }) {
                            Text("Logout")
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
            }
        }.frame(alignment: .center)
            

            Spacer()
    }
}

#Preview {
    SettingsView()
}
