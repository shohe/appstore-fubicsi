//
//  TabBarPage.swift
//  AppStore
//
//  Created by Shohe Ohtani on 2020/04/23.
//  Copyright © 2020 Shohe Ohtani. All rights reserved.
//

import Foundation
import SwiftUI

struct TabBarView: View {
    @State var selected : Int = 0
    var body: some View {
        TabView(selection: $selected) {
            TodayView().tabItem {
                Text("Today")
            }
            GamesView().tabItem {
                Text("Games")
            }
            AppsView().tabItem {
                Text("Apps")
            }
            ArcadeView().tabItem {
                Text("Arcade")
            }
            SearchView().tabItem {
                Text("Search")
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
