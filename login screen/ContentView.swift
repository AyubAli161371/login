//
//  ContentView.swift
//  login screen
//
//  Created by Ayub Ali on 12/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    
    var body: some View {
        // MARK: - for empty screen
        NavigationView{
            // MARK: - for background
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
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Username",text: $username)
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
                    
                    
                    
                    Button("Login"){
                       // antheticateUser(username: username, password: password)
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(.blue)
                    .cornerRadius(10)
                    
                  
                Button(action: {}, label: {
                    Text("Forgot Password")
                        .fontWeight(.bold)
                       
                        
                    })
                    NavigationLink(destination: SignUpScreen()) {
                        Text("Sign Up")
                            .foregroundColor(.white)
                            .frame(width: 300, height: 50)
                            .background(.blue)
                            .cornerRadius(10)
                            
                    }
                               
                        

                    
//                    NavigationLink(destination: Text("You are loged in @\(username)"), isActive: $showingLoginScreen){
//                        EmptyView()
//                    }
                  
                }
            }
            .navigationBarHidden(true)
        }
        
    }
    
//    func antheticateUser(username: String , password: String){
//        if username.lowercased() == "ayub123"{
//            wrongUsername = 0
//            if password.lowercased() == "ayub123"{
//                wrongPassword = 0
//                showingLoginScreen = true
//            }else{
//                wrongPassword = 2
//            }
//        }else{
//            wrongUsername = 2
//        }
//
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
