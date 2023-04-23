//
//  LogIn.swift
//  
//
//  Created by mashal imtiaz on 4/23/23.
//

import SwiftUI

struct LogIn: View {
    var body: some View {
        @State private var username: String = ""
        @State private var password: String = ""
        
        NavigationView {
            VStack {
                Text("Welcome Back!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                TextField("Username", text: $username)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Password", text: $password)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                NavigationLink(destination: HomePage()) {
                    Text("LOG IN")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Spacer()
                
                Text("Don't have an account?")
                    .font(.footnote)
                
                NavigationLink(destination: SignUp()) {
                    Text("Sign Up!")
                        .font(.headline)
                        .foregroundColor(.blue)
                }
                
                Spacer()
                
                NavigationLink(destination: HomePage()) {
                    Text("Home")
                        .font(.headline)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.bottom)
            }
            .padding()
        }
    }
}

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}
