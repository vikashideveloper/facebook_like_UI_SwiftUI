//
//  FBMainTabsView.swift
//  FacebookUIDemo
//
//  Created by Vikash on 03/12/19.
//  Copyright © 2019 Vikash Kumar. All rights reserved.
//

import SwiftUI

struct FBMainTabsView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house.fill")
            }
            
            ContentView()
                .tabItem {
                    Image(systemName: "house.fill")
            }

        }
    }
}

struct FBMainTabsView_Previews: PreviewProvider {
    static var previews: some View {
        FBMainTabsView()
    }
}
