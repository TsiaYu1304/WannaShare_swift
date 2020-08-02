//
//  ContentView.swift
//  Test_WannaShare
//
//  Created by 蔡瑀 on 2020/7/31.
//  Copyright © 2020 蔡瑀. All rights reserved.
//

import SwiftUI

struct ContentView: View {
     @State private var pickindex=1//0商家＿1用戶
    
    
    var body: some View {
       
        ScrollView {
            
            VStack {
                ZStack(alignment:.top) {
                    Image("Home_bg")
                        .resizable()
                        .scaledToFill()
                        .frame(width:UIScreen.main.bounds.width,height: 420)
                        //.frame(width:100,height: 100)
                        .cornerRadius(40)
                        //.edgesIgnoringSafeArea(.all)
                
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading){
                            Text("Hello,Becca!")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .padding(.bottom, 8.0)
                                .padding(.leading,26.0)
                            
                            Text("歡迎使用想享！")
                                .foregroundColor(Color.white)
                                .font(.system(size: 22))
                                .padding(.leading,26.0)
                            
                            TextField("找食物", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                .padding(.all,8)
                                .background(Color(red: 246/255, green:218/255 , blue: 103/255,opacity: 0.3))
                                .cornerRadius(7)
                                .padding(.horizontal,26.0)
                        }
                        
                        VStack(alignment: .center) {
                            Text("精選商家")
                                .foregroundColor(Color.white)
                                .font(.system(size: 22))
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(alignment: .center, spacing: 20) {
                                    Image("shop_1")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 300,height: 200)
                                        .cornerRadius(10)
                                        .padding(.leading, 50.0)
                                    .shadow(color:Color(red: 118/255, green: 81/255, blue: 4/255, opacity: 0.2),
                                    radius: 5.0,
                                    x: CGFloat(10),
                                    y: CGFloat(10))
                                    
                                    Image("shop_2")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 300,height: 200)
                                        .cornerRadius(10)
                                    .shadow(color:Color(red: 118/255, green: 81/255, blue: 4/255, opacity: 0.2),
                                    radius: 5.0,
                                    x: CGFloat(10),
                                    y: CGFloat(10))
                                    
                                    
                                    Image("shop_3")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 300,height: 200)
                                        .cornerRadius(10)
                                    .shadow(color:Color(red: 118/255, green: 81/255, blue: 4/255, opacity: 0.2),
                                    radius: 5.0,
                                    x: CGFloat(10),
                                    y: CGFloat(10))
                                }
                                    
                                .frame(height: 200)
                            }
                        
                        }
                        .padding(.top,10.0)
                       
                        
                        
                    }
                    .padding(.top,70.0)
                    //.padding(.leading,26.0)
                    
                }
                VStack(alignment: .center){
                    HStack {
                        Text("離你最近")
                            .font(.system(size: 22))
                            .foregroundColor(Color(red: 240/255, green: 162/255, blue: 2/255, opacity: 1.0))
                          //  .padding(.trailing, 50.0)
                        Spacer()
                        HStack{
                            Text("用戶")
                                .font(.system(size: 18))
                                .foregroundColor(
                                    self.pickindex==1
                                        ?.white
                                        :Color(red: 240/255, green: 162/255, blue: 2/255, opacity: 1.0))
                                .padding(.vertical,10)
                                .padding(.horizontal,17)
                                .background(Color(red: 240/255, green: 162/255, blue: 2/255).opacity(self.pickindex==1 ? 1:0))
                                .clipShape(Capsule())
                                .onTapGesture {
                                    self.pickindex=1
                                
                            }
                     
                            Text("商家")
                                .font(.system(size: 18))
                                .foregroundColor(
                                    self.pickindex==0
                                        ?.white
                                        :Color(red: 240/255, green: 162/255, blue: 2/255, opacity: 1.0))
                                .padding(.vertical,10)
                                .padding(.horizontal,17)
                                .background(Color(red: 240/255, green: 162/255, blue: 2/255).opacity(self.pickindex==0 ? 1:0))
                                .clipShape(Capsule())
                                .onTapGesture {
                                    self.pickindex=0
                            }
    
                        }
                        .frame(width:150,height:40)
                        .background(Color.white.opacity(0.8))
                        .clipShape(Capsule())
                        .shadow(color:Color(red: 118/255, green: 81/255, blue: 4/255, opacity: 0.2),
                                radius: 5.0,
                                x: CGFloat(5),
                                y: CGFloat(5))
                            //.padding(.leading, 50.0)
                    }
                    .padding(.all, 26.0)
                    if self.pickindex==0{
                        ForEach(0 ..< 3) { item in
                            FoodRow(food:foods[(item)])
                                .padding(.horizontal,26)
                                .padding(.bottom, 15.0)
                        }
                    }
                    else {
                         FoodRow(food:foods[1])                    }
                   
                    
                }
               

            }
        }
        .background(Color(red: 246/255, green:218/255 , blue: 103/255,opacity: 0.2))
        .edgesIgnoringSafeArea(.all)
        
        
    }
    
    
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}

