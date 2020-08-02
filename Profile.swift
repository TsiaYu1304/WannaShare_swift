//
//  Profile.swift
//  Test_WannaShare
//
//  Created by 蔡瑀 on 2020/8/2.
//  Copyright © 2020 蔡瑀. All rights reserved.
//

import SwiftUI

struct Profile: View {
    @State var Profile_index=0
    var body: some View {
        
        NavigationView {
            ZStack(alignment:.top){
               Image("account_bg")
                .resizable()
                .scaledToFill()
                .frame(width:UIScreen.main.bounds.width,height: 420)
                .cornerRadius(40)
                VStack{
                    Image("IDphoto")
                        .resizable()
                        .scaledToFill()
                        .frame(width:88,height:88)
                        .cornerRadius(50)
                    
                    Text("Becca")
                        .foregroundColor(Color.white)
                        .font(.system(size: 22))
                    
                    
                    Text("Ora1522@gmail.com")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18))
                    HStack{
                        VStack{
                             NavigationLink(destination: CoinView()){
                            Image("coin")
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFill()
                                .frame(width:55,height:55)
                                .cornerRadius(50)
                                .shadow(color:Color(red: 118/255, green: 81/255, blue: 4/255, opacity: 0.2),
                                        radius: 5.0,
                                        x: CGFloat(8),
                                        y: CGFloat(8))
                            }
                            Text("想享幣")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                        }
                        Spacer()
                        VStack{
                           
                                NavigationLink(destination: ChatView()){
                                    Image("chat")
                                        .renderingMode(.original)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width:55,height:55)
                                        .cornerRadius(50)
                                        .shadow(color:Color(red: 118/255, green: 81/255, blue: 4/255, opacity: 0.2),
                                                radius: 5.0,
                                                x: CGFloat(8),
                                                y: CGFloat(8))
                                }
                            
                            
                            Text("聊天記錄")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                        }
                         Spacer()
                        VStack{
                            NavigationLink(destination: CouponView()){
                            Image("coupon")
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFill()
                                .frame(width:55,height:55)
                                .cornerRadius(50)
                                .shadow(color:Color(red: 118/255, green: 81/255, blue: 4/255, opacity: 0.2),
                                        radius: 5.0,
                                        x: CGFloat(8),
                                        y: CGFloat(8))
                            }
                            Text("優惠券")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                        }
                         Spacer()
                        VStack{
                            NavigationLink(destination: SettingView()){
                            Image("setting")
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFill()
                                .frame(width:55,height:55)
                                .cornerRadius(50)
                                .shadow(color:Color(red: 118/255, green: 81/255, blue: 4/255, opacity: 0.2),
                                        radius: 5.0,
                                        x: CGFloat(8),
                                        y: CGFloat(8))
                            }
                            Text("設定")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16))
                        }
                    }
                    
                    .padding(.horizontal,50)
                    VStack{
                        HStack {
                            //
                            Button(action:{
                                self.Profile_index=0
                            }){
                                VStack{
                               Text("尚未領取")
                                    .foregroundColor(Color(red: 101/255, green: 101/255, blue: 101/255, opacity: 1.0))
                                    .font(.system(size: 18))
                                    Capsule().fill(self.Profile_index==0 ? Color(red: 240/255, green: 162/255, blue: 2/255, opacity: 1.0) : Color.clear)
                                        .frame(width:100,height:2)
                                        .padding(.bottom,5)
                                }
                            }
                            //
                            Spacer()
                            //
                            Button(action:{
                                self.Profile_index=1
                            }){
                                VStack{
                               Text("已領取")
                                    .foregroundColor(Color(red: 101/255, green: 101/255, blue: 101/255, opacity: 1.0))
                                    .font(.system(size: 18))
                                    Capsule().fill(self.Profile_index==1 ? Color(red: 240/255, green: 162/255, blue: 2/255, opacity: 1.0) : Color.clear)
                                        .frame(width:100,height:2)
                                        .padding(.bottom,5)
                                }
                            }
                           
                        }
                        .padding(.top,26)
                        .padding(.horizontal,60)
                        if self.Profile_index==0{
                            ScrollView{
                                ForEach(0 ..< 3) { item in
                                    FoodRow(food:foods[(item)])
                                        .padding(.horizontal,26)
                                        .padding(.bottom, 15.0)
                                }
                            }
                            
                        }
                        else{
                            ScrollView{
                                ForEach(1 ..< 3) { item in
                                    FoodRow(food:foods[(item)])
                                        .padding(.horizontal,26)
                                        .padding(.bottom, 15.0)
                                }
                            }
                            
                        }
                        Spacer()
                        
                    }
                    .background(Color.white)
                    .cornerRadius(30)
                    .padding(.top)
                    //.padding(.horizontal)
                    
                }
                .padding(.top,60)
              
              
            }
            .edgesIgnoringSafeArea(.all)
            
            //.navigationBarTitle("11")
//            .navigationBarTitle("")
//            .navigationBarHidden(true)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
