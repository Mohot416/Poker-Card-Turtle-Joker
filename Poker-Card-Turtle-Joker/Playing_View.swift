//
//  Playing_View.swift
//  Poker-Card-Turtle-Joker
//
//  Created by 00757031 on 2021/3/23.
//

import SwiftUI

struct Playing_View: View {
    @Binding var showPlayingView: Bool  //start to play
    @State private var showMenu = false
    var body: some View {
        ZStack{
            Image("green_background").resizable().scaledToFill().frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).opacity(0.8)
            Button(action: {showMenu = true}, label: {
                Text("Quit").padding().background(Color.white).cornerRadius(20).shadow(radius: 50)
            }).fullScreenCover(isPresented: $showMenu, content: {ContentView(showMenu: $showMenu)}
            ).offset(x: 120, y: -260)
        }
    }
}

struct Playing_View_Previews: PreviewProvider {
    static var previews: some View {
        Playing_View(showPlayingView: .constant(true))
    }
}
