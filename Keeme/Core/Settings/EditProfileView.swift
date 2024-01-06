//
//  EditProfileView.swift
//  Keeme
//
//  Created by Gunna Rahul on 03/01/24.
//

import SwiftUI

struct EditProfileView: View {
    @State private var isEditing = false
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var wrongemail = 0
    @State private var password = ""
    
    var body: some View {
        VStack(alignment:.center){
            HStack{
                Text("Edit Profile")
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
            }.padding(.leading,20)
            VStack(alignment:.center){
                
                HStack(alignment:.center){
                    ZStack {
                        Image("lauren")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                            .overlay(
                                Button(action: {
                                    // Code to be executed when the edit button is tapped
                                    print("Edit button tapped!")
                                    // Set isEditing to true or perform your edit action
                                    isEditing.toggle()
                                }) {
                                    Image(systemName: "pencil")
                                        .foregroundColor(.white)
                                        .padding(8)
                                        .background(Color.blue)
                                        .clipShape(Circle())
                                }
                                .offset(x: 100, y: 0) // Adjust the offset to position the edit button
                                , alignment: .bottomLeading
                            )
                        }
                }
            }.padding(.bottom,30)

            
            VStack{
                
                TextField("First Name",text:$firstName)
                    .padding(10)
                        .frame(width:300,height:50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .padding(.bottom,10)
                TextField("Last Name",text:$lastName)
                    .padding(10)
                        .frame(width:300,height:50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .padding(.bottom,10)
                TextField("E-mail",text:$email)
                    .padding(10)
                        .frame(width:300,height:50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .padding(.bottom,10)
                SecureField("Password",text:$password)
                 .padding(10)
                    .frame(width:300,height:50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
            }
            
            VStack(alignment:.center){
                NavigationLink(destination:HomeView()){
                    HStack(alignment: .center){
                            Button(action: {
                                        // Code to be executed when the button is tapped
                                        print("Button tapped!")
                            }) {
                                        Text("Save")
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
        Spacer()
    }
}




#Preview {
    EditProfileView()
}
