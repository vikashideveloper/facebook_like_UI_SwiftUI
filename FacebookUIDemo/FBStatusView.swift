//
//  FBStatusView.swift
//  FacebookUIDemo
//
//  Created by Vikash on 01/12/19.
//  Copyright © 2019 Vikash Kumar. All rights reserved.
//

import SwiftUI

struct FBStatusView: View {
    var body: some View {
        List{
            Image("profilePick")
                .frame(height: 100)
        }
        .frame(height: 100)
    }
}

struct FBStatusView_Previews: PreviewProvider {
    static var previews: some View {
        FBStatusView()
    }
}
