//
//  ContentView.swift
//  BeProductive
//
//  Created by MUQUEET MOHSEN CHOWDHURY on 4/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        var body: some View {
            VStack(spacing: 20) {
//                Text("BeProductive")
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
                Image("BeProductive")
                    .resizable().aspectRatio(contentMode: .fit)
                
                
                //                  Button(action: {
                //                      print("Signup button tapped")
                //                  }) {
                NavigationLink(destination: SignUp()) {
                    Text("SIGNUP")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(40)
                }
                
                NavigationLink(destination: LogIn()) {
                    Text("LOGIN")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(40)
                }
            }
            .padding()
        }
    }
}

struct ContentView: View {
    var body: some View {
        GoalsListView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

