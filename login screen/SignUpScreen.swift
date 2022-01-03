//
//  SignUpScreen.swift
//  login screen
//
//  Created by Ayub Ali on 15/12/2021.
//

import SwiftUI

struct SignUpScreen: View {
    @State private var username = ""
    @State private var userEmail = ""
    @State private var password = ""
    @State private var comformPassword = ""
    @State private var dateOfBirth: Date = Date()
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                
                
                Circle()
                    .scale(1.45)
                    .foregroundColor(.white)
                
                VStack{
                    Text("Sing up")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Username",text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                    TextField("UserEmail",text: $userEmail)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                    SecureField("Password",text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    SecureField("Comform Password",text: $comformPassword)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
              

                    DatePicker(selection: $dateOfBirth, in: ...Date(),displayedComponents: [.date,.hourAndMinute]) {
                        Image(systemName: "calendar.badge.plus")
                        Text("Date of Birth")

                    }
                    .frame(width: 30, height: 50)
                    //.datePickerStyle(.graphical)
                    
                   
                    
                }
            }
            
        }
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
