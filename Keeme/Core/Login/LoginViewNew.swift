//
//  LoginViewNew.swift
//  Keeme
//
//  Created by Gunna Rahul on 03/01/24.
//

import SwiftUI

struct LoginViewNew: View {
    
    @State private var email: String=""
    @State private var password: String=""
    @State private var wrongemail = 0
    @State private var wrongpassword = 0
    @State private var showingLoginScreen = false
    
    
    var body: some View {
        ZStack{
            Color.keemecolor
            .ignoresSafeArea()
            Image("keeme")
                .resizable()
                .scaledToFill()
                .frame(width: 150,height: 120)
                .clipShape(Rectangle())
                .padding()
                .offset(x:7,y:-300)
        Text("Partner in Progress")
                .offset(x:7,y:-220)
               Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 500, height: 596)
                    .background(.white)
                    .cornerRadius(90)
                    .padding(.leading,100)
                    .padding(.bottom,-260)
            VStack(spacing:20){
               Spacer()
                HStack{Text("Login")
                        .font(
                            Font.custom("SF Pro Display", size: 40)
                                .weight(.bold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .padding()
                        .offset(y:10)
                }
                VStack{ TextField("Email",text:$email)
                    // .padding()
                        .frame(width:300,height:50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red,width:CGFloat(wrongemail))
                    
                    SecureField("Password",text:$password)
                    // .padding()
                        .frame(width:300,height:50)
                        .background(Color.black.opacity(0.05))
                        .border(.red,width:CGFloat(wrongpassword))
                        
                    
                    Button("Login") {
                    }
                    .foregroundColor(.white)
                    .frame(width:300,height:50)
                    .background(Color.black)
                    .cornerRadius(10)
                    
                    Text("Forget Password")
                        .foregroundColor(.blue)
                        .font(.headline)
                        .frame(width: 300,alignment: .leading)
                }
                
                HStack{   Text("or")
                        .padding()
                }
                
                HStack{
                    Image("google")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30,height: 30)
                        .clipShape(Circle())
                    Image("apple")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30,height: 30)
                        .clipShape(Circle())
                    Image("microsoft")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30,height: 30)
                        .clipShape(Rectangle())
                }
                .padding()
                HStack {
                    Text("Dont have an Account ?")
                    Text("Sign Up")
                        .foregroundColor(.blue)
                }
                .padding()
                
              //  NavigationLink(destination: Text(""),isActive: $showingLoginScreen){
                    //ContentView()
                }
            }
        }
     //   .navigationBarHidden(true)
    }
//}

#Preview {
    LoginViewNew()
}
