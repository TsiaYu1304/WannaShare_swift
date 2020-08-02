//
//  CoinView.swift
//  Test_WannaShare
//
//  Created by 蔡瑀 on 2020/8/2.
//  Copyright © 2020 蔡瑀. All rights reserved.
//

import SwiftUI

struct CoinView: View {
    var body: some View {
        VStack{
            HStack{
                 Spacer()
                Image("coin")
                    .resizable()
                    .scaledToFill()
                    .frame(width:100,height:100)
                 Spacer()
                VStack(alignment: .leading){
                    Text("0枚想享幣")
                        .padding(.bottom)
                    Text("已捐贈餐點給社福機構0次")
                     
                }
                .foregroundColor(Color(red: 101/255, green: 101/255, blue: 101/255, opacity: 1.0))
               Spacer()
            }
            .frame(height:150)
            //
            ScrollView {
                VStack{
                    HStack{
                        Spacer()
                        Image("seven")
                        .resizable()
                        .scaledToFill()
                        .frame(width:100,height:100)
                         Spacer()
                        VStack(alignment: .leading){
                            Spacer()
                            Spacer()
                            Text("7-11")
                            Spacer()
                            Text("飲料第二件6折")
                            Spacer()
                            Text("兌換期限：4/27 17:00")
                            HStack{
                                Image("cuteCoin")
                                .resizable()
                                .scaledToFill()
                                .frame(width:30,height:30)
                                Text("10")
                            }
                            Spacer()
                            Spacer()
                        }
                        .foregroundColor(Color(red: 101/255, green: 101/255, blue: 101/255, opacity: 1.0))
                        VStack {
                            //Spacer()
                            Text("兌換")
                                .foregroundColor(Color.white)
                                .padding(.horizontal)
                                .padding(.vertical,10)
                            .background(Color("ora"))
                                .cornerRadius(10)
                            Spacer()
                        }
                        .padding(.top)
                        Spacer()
                    }
                    .frame(height:150)
                    HStack{
                        Spacer()
                        Image("sansun")
                            .resizable()
                            .scaledToFill()
                            .frame(width:100,height:100)
                         Spacer()
                        VStack(alignment: .leading){
                            Spacer()
                            Spacer()
                            Text("三商巧福")
                            Spacer()
                            Text("牛肉麵75折")
                            Spacer()
                            Text("兌換期限：4/27 17:00")
                            HStack{
                                Image("cuteCoin")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width:30,height:30)
                                Text("10")
                            }
                            Spacer()
                            Spacer()
                        }
                        .foregroundColor(Color(red: 101/255, green: 101/255, blue: 101/255, opacity: 1.0))
                        VStack {
                            //Spacer()
                            Text("兌換")
                                .foregroundColor(Color.white)
                                .padding(.horizontal)
                                .padding(.vertical,10)
                                .background(Color("ora"))
                                .cornerRadius(10)
                            Spacer()
                        }
                        .padding(.top)
                        Spacer()
                    }
                    .frame(height:150)
                    
                }
            }
            //
            Spacer()
                .navigationBarTitle(Text("優惠券"), displayMode: .inline)
        }
        .navigationBarColor(UIColor(red: 240/255, green: 162/255, blue: 2/255, alpha: 1))
    }
}

struct CoinView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CoinView()}
    }
}
