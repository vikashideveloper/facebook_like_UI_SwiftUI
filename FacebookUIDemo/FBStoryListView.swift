//
//  FBStatusView.swift
//  FacebookUIDemo
//
//  Created by Vikash on 01/12/19.
//  Copyright © 2019 Vikash Kumar. All rights reserved.
//

import SwiftUI

struct FBStoryListView: View {
    
    let stories = [
        FBStory(id: 1, username: "Vikash Kumar", userphoto: "profilePick", content: "pmmodi"),
        FBStory(id: 2, username: "PV Sindhu", userphoto: "sindhu1", content: "sindhu"),
        FBStory(id: 3, username: "Virat Kohli", userphoto: "kohali1", content: "virat"),
        FBStory(id: 4, username: "Google Inc.", userphoto: "google", content: "sundar"),
        FBStory(id: 5, username: "Vikash Kumar", userphoto: "profilePick", content: "pmmodi"),
        FBStory(id: 6, username: "PV Sindhu", userphoto: "sindhu1", content: "sindhu"),
        FBStory(id: 7, username: "Virat Kohli", userphoto: "kohali1", content: "virat"),
        FBStory(id: 8, username: "Google Inc.", userphoto: "google", content: "sundar")

    ]
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Stories")
                .fontWeight(.semibold)
                .font(.system(size: 14))
                .padding([.leading, .top], 8)

            
            ScrollView(.horizontal) {
                HStack(spacing: 8) {
                    ForEach(stories) { story in
                        ZStack(alignment: .topLeading) {
                            Image(story.content)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 120, height: 200)
                                .cornerRadius(10)
                                .clipped()
                            
                            VStack(alignment: .leading) {
                                Image(story.userphoto)
                                    .resizable()
                                    .clipShape(Circle())
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 30, height: 30)
                                    .overlay(Circle()
                                        .stroke(Color.blue, lineWidth: 3)
                                        .shadow(color: Color.black, radius: 5, x: 0, y: 0))

                                Spacer()
                                Text(story.username)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 12))
                                    .fontWeight(.bold)
                            }
                            .padding( 8)

                        }
                    }
                }
                .padding ([.leading, .trailing], 8)
            }
            
            Rectangle()
                .fill(Color.gray.opacity(0.5))
                .frame(height: 8)
            

        }
        .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
    }
}

struct FBStatusView_Previews: PreviewProvider {
    static var previews: some View {
        FBStoryListView()
    }
}


struct FBStory: Identifiable {
    var id = 0
    var username = ""
    var userphoto = ""
    var content = ""
}
