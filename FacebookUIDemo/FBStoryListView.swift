//
//  FBStatusView.swift
//  FacebookUIDemo
//
//  Created by Vikash on 01/12/19.
//  Copyright © 2019 Vikash Kumar. All rights reserved.
//

import SwiftUI

struct FBStoryListView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Stories")
                .fontWeight(.semibold)
                .font(.system(size: 14))
                .padding([.leading, .top], 8)

            
            ScrollView(.horizontal) {
                HStack(spacing: 8) {
                    ForEach((1...10), id: \.self) { _ in
                        ZStack(alignment: .topLeading) {
                            Image("profilePick")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 120, height: 200)
                                .cornerRadius(10)
                                .clipped()
                            
                            Image("profilePick")
                                .resizable()
                                .clipShape(Circle())
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 30, height: 30)
                                .overlay(Circle()
                                    .stroke(Color.blue, lineWidth: 3)
                                    .shadow(color: Color.black, radius: 5, x: 0, y: 0))
                                .padding([.leading, .top], 8)

                        }
                    }
                }.padding ([.leading, .trailing], 8)
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
