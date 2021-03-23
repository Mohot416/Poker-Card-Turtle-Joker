//
//  ContentView.swift
//  Poker-Card-Turtle-Joker
//
//  Created by 00757031 on 2021/3/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showHTPPage = false
    @State private var showPlayingView = false
    @Binding var showMenu: Bool //back to menu
    var body: some View {
        ZStack{
            Image("green_background").resizable().scaledToFill().frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).opacity(0.8)
            Image("red_joker").resizable()  .scaledToFill().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 150).background(Color.white).cornerRadius(10).offset(x: 0, y: -100).rotationEffect(.degrees(-30.0))
            Image("2_of_spades").resizable()  .scaledToFill().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 150).background(Color.white).cornerRadius(10).offset(x: 0, y: -100).rotationEffect(.degrees(10.0)).shadow(radius: 20)
            Text("明杰的抽鬼牌挑戰！！").padding().background(Color.yellow).frame(width: 300, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color.orange).cornerRadius(20)
            Button(action: {showPlayingView = true}, label: {
                Text("Come On!!").padding().background(Color.white).cornerRadius(10)
                }).fullScreenCover(isPresented: $showPlayingView, content: {
                    Playing_View(showPlayingView: $showPlayingView)
                }).offset(x: 0, y: 100)
            Button(action: {showHTPPage = true}, label: {
                Text("How To Play?").padding().background(Color.white).cornerRadius(10)
            }).sheet(isPresented: $showHTPPage, content: {
                ZStack{
                    Color.yellow.edgesIgnoringSafeArea(.all)
                    VStack{
                        Text("玩家收牌後，只要有二張相同數字的牌，就可打出，當沒有相同數字的牌後，就開始進行抽牌。").padding()
                        Text("只要把手上的牌都打出去，並且不要抽到鬼牌，就獲勝囉！").padding()
                        Text("很簡單吧！往下拉就可以回到主頁喔～").padding()
                    }
                }
            }).offset(x: 0, y: 180)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(showMenu: .constant(true))
    }
}
