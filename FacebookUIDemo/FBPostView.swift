//
//  FBPostView.swift
//  FacebookUIDemo
//
//  Created by Vikash on 01/12/19.
//  Copyright © 2019 Vikash Kumar. All rights reserved.
//

import SwiftUI


struct FBPostUserHeaderView: View {
    var post: FBPost
    
    var body: some View {
        HStack {
            
            Image( post.userPhoto)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(20)
                .aspectRatio(contentMode: .fit)

            VStack(alignment: .leading) {
                Text(post.username)
                    .fontWeight(.bold)
                    .font(.system(size: 16))
                
                Text(post.time)
                    .font(.system(size: 13))
                    .foregroundColor(Color.gray)
            }
            
            
        }
    }
}

//struct FBPostUserHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        FBPostUserHeaderView()
//    }
//}

struct FBPostView: View {
    var post: FBPost
    
    var body: some View {
        VStack(alignment: .leading) {
            
            VStack(alignment: .leading) {
                FBPostUserHeaderView(post: post)
                .frame(height: 40)

                Text(post.text)
                    .font(.system(size: 14))
            }
            .padding(.init(top: 8, leading: 8, bottom: 0, trailing: 8))
            
            VStack {

            FBPostImageView(post: post)
                
                likeCommentCountsRow()
            }
            
            Divider()
                .frame(height: 0.5)
                .padding([.leading, .trailing], 12)

             VStack(spacing: 0) {
                 
                 likeCommentShareActionRow()
                     .frame(height: 30)

                 Rectangle()
                     .fill(Color.gray.opacity(0.5))
                     .frame(height: 8)
             }
        }
        .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
    }
    
    
    func likeCommentCountsRow() -> some View {
        HStack(alignment: .center) {
            HStack {
                Image(systemName: "hand.thumbsup.fill")
                    .font(Font.system(size: 14))
                    .foregroundColor(Color.gray)

                Text("\(post.likeCount)")
                    .font(Font.system(size: 14))
                    .foregroundColor(Color.gray)

            }
            
            Spacer()
            
            HStack {
                Text("\(post.commentcount) comments")
                    .font(Font.system(size: 14))
                    .foregroundColor(Color.gray)

                Text("\(post.shareCount) shares")
                    .font(Font.system(size: 14))
                    .foregroundColor(Color.gray)
            }

        }
        .padding([.leading, .trailing], 8)
    }
    
    func likeCommentShareActionRow() -> some View {
        
        HStack(alignment: .center) {
            
            HStack {
                Image(systemName: "hand.thumbsup")
                
                Text("Like")
                    .font(Font.system(size: 14))
                
            }
            .onTapGesture {
                print("video clicked")
            }
            
            Spacer()
            
            HStack {
                Image(systemName: "message")
                Text("Comment")
                    .font(Font.system(size: 14))
                
            }
            .onTapGesture {
                print("photo clicked")
            }
            
            
            Spacer()

            
            HStack {
                Image(systemName: "arrowshape.turn.up.right")
                
                Text("Share")
                    .font(Font.system(size: 14))
            }
            .onTapGesture {
                print("check in clicked")
            }
            
            
        }
        .padding(.init(top: 0, leading: 30, bottom: 8 , trailing: 30))
        
    }
}





//struct FBPostView_Previews: PreviewProvider {
//    static var previews: some View {
////        FBPostView()
//    }
//}
//

struct FBPostImageView: View {
    var post: FBPost
    
    var images = [String]()
    
    var body: some View {
        HStack {
            if images.count == 1 {
                Image( post.image)
                    .resizable()
                    .frame(height: 200)
            } else {
                Image(post.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                .clipped()

            }
        }
    }
}




struct FBPost: Identifiable {
    var id = 0
    var username = ""
    var userPhoto = ""
    var time = ""
    var text = ""
    var image = ""
    var likeCount = 0
    var commentcount = 0
    var shareCount = 0
}


