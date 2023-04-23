//
//  HomePage.swift
//  
//
//  Created by mashal imtiaz on 4/23/23.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image("Image")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    
                    Spacer()
                    
                    NavigationLink(destination: SelfieView()) {
                        Image("SELFIE")
                            .font(.headline)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                
                Spacer()
                
                VStack {
                    HStack {
                        NavigationLink(destination: TodoView()) {
                            Text("TO DO")
                                .font(.headline)
                                .padding()
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: GoalsListView()) { // is this the right view??
                            Text("GOALS")
                                .font(.headline)
                                .padding()
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .background(Color.yellow)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                    
                    HStack {
                        NavigationLink(destination: Rewards()) {
                            Text("REWARDS")
                                .font(.headline)
                                .padding()
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .background(Color.purple)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: StudySessionView()) {
                            Text("CREATE SESSION")
                                .font(.headline)
                                .padding()
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                    NavigationLink(destination: HomePage()) {
                        Text("Home")
                            .font(.headline)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.bottom)
                } // vstack ender
                .padding()
                
                Spacer()
                
            } // big vstack ender
            .padding()
        } //navView ender
    } //someView ender
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
