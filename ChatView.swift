//
//  ChatView.swift
//  Test_WannaShare
//
//  Created by 蔡瑀 on 2020/8/2.
//  Copyright © 2020 蔡瑀. All rights reserved.
//

import SwiftUI


struct ChatView: View {
   init() {
             // this is not the same as manipulating the proxy directly
             let appearance = UINavigationBarAppearance()

             // this overrides everything you have set up earlier.
             appearance.configureWithTransparentBackground()

             // this only applies to big titles
             appearance.largeTitleTextAttributes = [
                 .font : UIFont.systemFont(ofSize: 20),
                 NSAttributedString.Key.foregroundColor : UIColor.white
             ]
             // this only applies to small titles
             appearance.titleTextAttributes = [
                 .font : UIFont.systemFont(ofSize: 20),
                 NSAttributedString.Key.foregroundColor : UIColor.white
             ]

             //In the following two lines you make sure that you apply the style for good
             UINavigationBar.appearance().scrollEdgeAppearance = appearance
             UINavigationBar.appearance().standardAppearance = appearance

             // This property is not present on the UINavigationBarAppearance
             // object for some reason and you have to leave it til the end
             UINavigationBar.appearance().tintColor = .white

         }
    var body: some View {
        VStack{
            Image("No_chat")
                .resizable()
                .scaledToFill()
                .frame(width:235,height: 235)
            Text("目前尚無聊天記錄")
                .foregroundColor(Color(red: 101/255, green: 101/255, blue: 101/255, opacity: 1.0))
             .navigationBarTitle(Text("聊天"), displayMode: .inline)
            
          
        }
          .navigationBarColor(UIColor(red: 240/255, green: 162/255, blue: 2/255, alpha: 1))
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
       NavigationView {
        ChatView()
        }
    }
}
