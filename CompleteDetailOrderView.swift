//
//  CompleteDetailOrderView.swift
//  Test_WannaShare
//
//  Created by 蔡瑀 on 2020/8/4.
//  Copyright © 2020 蔡瑀. All rights reserved.
//

import SwiftUI

struct CompleteDetailOrder: View {
    //自訂Back鍵
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var btnBack : some View { Button(action: {
        self.presentationMode.wrappedValue.dismiss()
    }) {
        HStack {
            Image(systemName: "chevron.left") // set image here
                .renderingMode(.original)
                .foregroundColor(.red)
                .aspectRatio(contentMode: .fit)
                .padding(.all)
                .background(Color.white)
                .cornerRadius(10)
        }
        }
    }
    
    var body: some View {
        ZStack(alignment:.top) {
            Image("Home_bg")
                .resizable()
                .scaledToFill()
                .frame(width:UIScreen.main.bounds.width,height: 420)
                .cornerRadius(40)
            VStack{
                RoundedRectangle(cornerRadius:30)
                    .frame(width:UIScreen.main.bounds.width,height:300)
                    .foregroundColor(Color.white)
                    .padding(.top,200)
                Spacer()
            }
            VStack {
                Image("IDphoto")
                    .resizable()
                    .scaledToFill()
                    .frame(width:200,height:200)
                    .cornerRadius(20)
                    .padding(.top,100)
                Text("吐司寶寶")
                    .font(.system(size: 22))
                    .foregroundColor(Color(red: 101/255, green: 101/255, blue: 101/255, opacity: 1.0))
                    .padding(.all)
                List{
                    HStack {
                        Text("分享人")
                        Spacer()
                        Image("IDphoto")
                        .resizable()
                        .scaledToFill()
                        .frame(width:32,height:32)
                        .cornerRadius(50)
                        Text("阿明")
                    }
                    HStack {
                        Text("價格")
                        Spacer()
                        Text("免費")
                    }
                    HStack {
                        Text("數量")
                        Spacer()
                        Text("1")
                    }
                    HStack {
                        Text("說明")
                        Spacer()
                        Text("很好吃喔")
                    }
                    HStack {
                        Text("期限")
                        Spacer()
                        Text("2020/8/15")
                    }
                    HStack {
                        Text("地點")
                        Spacer()
                        Text("捷運科技大樓站")
                    }
                    HStack {
                        Text("下訂時間")
                        Spacer()
                        Text("2020/8/14 13:25")
                    }
                    HStack {
                        Text("領取時間")
                        Spacer()
                        Text("2020/8/14 13:25")
                    }
                }
                .font(.system(size: 18))
                .foregroundColor(Color(red: 101/255, green: 101/255, blue: 101/255, opacity: 1.0))
                .padding(.horizontal,50)
                //.listStyle(GroupedListStyle())
                .onAppear {
                    UITableView.appearance().separatorColor = .clear
                }
                HStack {
                    HStack {
                        Image("bubble")
                        Text("聯絡分享人")
                            .foregroundColor(Color.white)
                    }
                    .padding(.all)
                    .padding(.horizontal,80)
                    .background(Color("ora"))
                .cornerRadius(10)
                    
                }
                .padding(.top,-100)
                
            }
            
            
            
            
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
    }
}
struct CompleteDetailOrder_Previews: PreviewProvider {
    static var previews: some View {
        CompleteDetailOrder()
    }
}
