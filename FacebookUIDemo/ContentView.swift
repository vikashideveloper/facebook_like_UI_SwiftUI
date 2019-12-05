//
//  ContentView.swift
//  FacebookUIDemo
//
//  Created by Vikash on 03/11/19.
//  Copyright © 2019 Vikash Kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var posts = [
        FBPost(id: 1, username: "Vikash Kumar", userPhoto: "profilePick", time: "15 mins", text: "Prime Minister Narendra Modi today announced the third edition of \"Pariksha Pe Charcha\", a session where he would interact with thousands of students on the ways to handle examination stress. The Prime Minister has also launched a contest for the students of Classes 9 to 12 and its winners will get an opportunity to attend the event and ask him questions.", image: "profilePick", likeCount: 100, commentcount: 150, shareCount: 10),
        
        FBPost(id: 2, username: "PV Sindhu", userPhoto: "sindhu1", time: "10 mins", text: "Pusarla Venkata Sindhu (born 5 July 1995) is an Indian professional badminton player. Having made her international debut in 2009, she rose to a career high ranking of no. 2 in April 2017. Over the course of her career, Pusarla has won medals at numerous tournaments on the BWF circuit including a gold at the 2019 World Championships thus becoming first Indian to become the Badminton World Champion.", image: "sindhu", likeCount: 100, commentcount: 150, shareCount: 10),
        
        FBPost(id: 3, username: "Virat Kohali", userPhoto: "kohali1", time: "25 mins", text: "A right-handed top-order batsman, Kohli is regarded as one of the best batsmen in the world.[3] He plays for Royal Challengers Bangalore in the Indian Premier League (IPL), and has been the team's captain since 2013. Since October 2017, he has been the top-ranked ODI batsman in the world and is currently 1st in Test rankings with 928 points.[4][5]Among Indian batsmen, Kohli has the best ever Test rating (937 points), ODI rating (911 points) and T20I rating (897 points).", image: "virat", likeCount: 100, commentcount: 150, shareCount: 10)

    ]

    
    init() {
            // To remove only extra separators below the list:
            UITableView.appearance().tableFooterView = UIView()

            // To remove all separators including the actual ones:
            UITableView.appearance().separatorStyle = .none

    }
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                titleView()
                    .padding(.top, 8)

                List {
                    postCreateNavigationHeaderView()
                    .background(Color.white)

                    Section {
                        FBStoryListView()
                        ForEach(posts) { post in
                            FBPostView(post: post)
                        }
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
                    .aspectRatio(contentMode: .fill)
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
