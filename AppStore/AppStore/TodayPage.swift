//
//  TodayPage.swift
//  AppStore
//
//  Created by Shohe Ohtani on 2020/04/23.
//  Copyright © 2020 Shohe Ohtani. All rights reserved.
//

import Foundation
import SwiftUI

struct TodayView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Wensday, April 15").foregroundColor(.gray).bold().font(Font.footnote)
                        Text("Today").font(Font.largeTitle).bold()
                    }
                    Spacer()
                    Button(action: self.loadProfile, label: { Image("Profile").resizable().frame(width: 40, height: 40, alignment: .trailing)
                    })
                }.padding([.leading, .trailing, .top])
                
                HighlightView(category: "Dog", title: "You know you want him.", message: "Isn't a dog everyone's favorite friend").frame(height: 550, alignment: .leading)
                HighlightView(category: "Dog", title: "You know you want him.", message: "Isn't a dog everyone's favorite friend").frame(height: 550, alignment: .leading)
                HighlightView(category: "Dog", title: "You know you want him.", message: "Isn't a dog everyone's favorite friend").frame(height: 550, alignment: .leading)
                HighlightView(category: "Dog", title: "You know you want him.", message: "Isn't a dog everyone's favorite friend").frame(height: 550, alignment: .leading)
                HighlightView(category: "Dog", title: "You know you want him.", message: "Isn't a dog everyone's favorite friend").frame(height: 550, alignment: .leading)
            }
        }
    }
    
    func loadProfile() {
        // todo
    }
}

struct HighlightView : View {
    var category: String
    var title: String
    var message: String
    var body: some View {
        VStack {
            ZStack {
                Image("Dog").resizable()
                LinearGradient(gradient: Gradient(colors: [.clear, Color.black.opacity(0.6)]), startPoint: .top, endPoint: .bottom)
                
                VStack(alignment: .leading) {
                    Text(category).foregroundColor(Color.white.opacity(0.7)).bold()
                    Text(title).foregroundColor(.white).font(Font.title).bold()
                    Spacer()
                    Text(message).foregroundColor(.white)
                }.padding()
            }
        }.cornerRadius(30).padding().shadow(radius: 4)
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
