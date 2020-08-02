//
//  ChatView.swift
//  Test_WannaShare
//
//  Created by 蔡瑀 on 2020/8/2.
//  Copyright © 2020 蔡瑀. All rights reserved.
//

import SwiftUI


struct CouponView: View {
  
    var body: some View {
        VStack{
            Image("No_coupon")
                .resizable()
                .scaledToFill()
                .frame(width:235,height: 235)
            Text("目前尚無優惠券")
                .foregroundColor(Color(red: 101/255, green: 101/255, blue: 101/255, opacity: 1.0))
             .navigationBarTitle(Text("優惠券"), displayMode: .inline)
            
          
        }
          .navigationBarColor(UIColor(red: 240/255, green: 162/255, blue: 2/255, alpha: 1))
    }
}

struct CouponView_Previews: PreviewProvider {
    static var previews: some View {
       NavigationView {
        CouponView()
        }
    }
}
