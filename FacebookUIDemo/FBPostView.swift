//
//  FBPostView.swift
//  FacebookUIDemo
//
//  Created by Vikash on 01/12/19.
//  Copyright © 2019 Vikash Kumar. All rights reserved.
//

import SwiftUI


struct FBPostUserHeaderView: View {
    var body: some View {
        HStack {

            Image( "profilePick")
            .resizable()
            .frame(width: 40, height: 40)
            .cornerRadius(20)
            
            VStack(alignment: .leading) {
               Text("Vikash Kumar")
                .fontWeight(.bold)
                .font(.system(size: 16))
               
                Text("15 mins")
                 .font(.system(size: 13))
                 .foregroundColor(Color.gray)
            }
                
            
        }
    }
}

struct FBPostUserHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FBPostUserHeaderView()
    }
}

struct FBPostView: View {
    var body: some View {
        VStack(alignment: .leading) {

        VStack(alignment: .leading) {
            FBPostUserHeaderView()
            Text("That draws all five shapes: two at 200x200 and three at 100x50. However, because the drawing behavior of the shapes is different you’ll see all five shapes visible in the output.")
            .font(.system(size: 14))
        }
        .padding(.init(top: 8, leading: 8, bottom: 0, trailing: 8))
       
            FBPostImageView()

        Rectangle()
            .fill(Color.gray.opacity(0.5))
            .frame(height: 8)
        }
        .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))

    }
}

struct FBPostView_Previews: PreviewProvider {
    static var previews: some View {
        FBPostView()
    }
}


struct FBPostImageView: View {
    
    var images = [String]()
    
    var body: some View {
        HStack {
            if images.count == 1 {
                Image( "profilePick")
                .resizable()
                .frame(height: 200)
            } else {
                Image( "profilePick")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .clipped()

            }
        }
    }
}
