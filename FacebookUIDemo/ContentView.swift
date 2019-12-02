//
//  ContentView.swift
//  FacebookUIDemo
//
//  Created by Vikash on 03/11/19.
//  Copyright © 2019 Vikash Kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                titleView()
                    .padding(.top, 8)

                List {

                    Section {
                        postCreateNavigationHeaderView()
                        .background(Color.white)

                    }
                    

                    Section {
                        FBStatusView()
                        FBPostView()
                        FBPostView()
                        FBPostView()
                        FBPostView()
                        FBPostView()
                        FBPostView()

                    }

                }

            }
            .navigationBarHidden(true)
            .navigationBarTitle("", displayMode: .inline)
        }

    }
    
    func headerView() -> some View {
        HStack {
            Image("profilePick")
                .resizable()
                .frame(width: 60, height: 60)
        }
    }
    
    func titleView() -> some View {
        HStack(alignment: .center) {
            Text("facebook")
                .foregroundColor(Color.blue)
                .font(.system(size: 24, weight: .bold))
                .padding()
            Spacer()
            Button(action: {
                print("clicked")
            }, label: {
                Image(systemName: "magnifyingglass.circle.fill")
                    .font(.system(size: 24, weight: .bold))
                
            }
            )
                .frame(width: 40, height: 40)
            .foregroundColor(Color.gray)
        
        }
        .frame(height: 30)
    }
    
    
    func postCreateNavigationHeaderView() -> some View {
        VStack(alignment: .leading) {
            HStack{
                Image("profilePick")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
                Text("What's on your mind?")
            }.padding(.init(top: 8, leading: 8, bottom: 0, trailing: 8))
            
            Divider()
                .background(Color.gray)
            
            HStack(alignment: .center) {

                HStack {
                    Image(systemName: "video")
                    .foregroundColor(Color.red)

                    Text("Live")
                    .font(Font.system(size: 14))

                }
                .onTapGesture {
                    print("video clicked")
                }
                
                Spacer()
                Divider()
                    .frame(width: 0.5)
                    .background(Color.gray)
              Spacer()

                    HStack {
                        Image(systemName: "photo")
                            .foregroundColor(Color.green)
                        Text("Photo")
                        .font(Font.system(size: 14))

                    }
                .onTapGesture {
                    print("photo clicked")
                }


                Spacer()
                  Divider()
                    .frame(width: 0.5)
                      .background(Color.gray)
                
                Spacer()

                
                    HStack {
                        Image(systemName: "location")
                        .foregroundColor(Color.pink)

                        Text("Check in")
                            .font(Font.system(size: 14))
                    }
                .onTapGesture {
                    print("check in clicked")
                }


                }
            .padding(.init(top: 0, leading: 12, bottom: 0 , trailing: 12))

            Rectangle()
                .fill(Color.gray.opacity(0.5))
                .frame(height: 8)
        }
        .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0 ))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
