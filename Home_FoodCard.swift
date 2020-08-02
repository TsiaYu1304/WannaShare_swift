//
//  SwiftUIView.swift
//  Test_WannaShare
//
//  Created by 蔡瑀 on 2020/8/1.
//  Copyright © 2020 蔡瑀. All rights reserved.
//

import SwiftUI

struct FoodRow: View {
    let food:Food
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image(food.IconImage)
                .resizable()
                .scaledToFill()
                .frame(width: 26, height: 26)
                .clipped()
                .cornerRadius(50)
                Text(food.ShopName)
                .font(.system(size: 18))
                .foregroundColor(Color(red: 101/255, green: 101/255, blue: 101/255, opacity: 1.0))
                
            }
            HStack{
                Image(food.FoodImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 88, height: 88)
                    .clipped()
                VStack(alignment: .leading){
                    HStack{
                        Text(food.FoodName)
                            .font(.system(size: 22))
                            .foregroundColor(Color(red: 101/255, green: 101/255, blue: 101/255, opacity: 1.0))
                            .padding(.trailing, 50.0)
                        Image("money")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 22, height: 22)
                            .clipped()
                        Text(food.Price)
                            .font(.system(size: 18))
                            .foregroundColor(Color(red: 101/255, green: 101/255, blue: 101/255, opacity: 1.0))
                    }
                    HStack{
                        Image("pin")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 18, height: 18)
                            .clipped()
                        Text(food.Add)
                            .foregroundColor(Color(red: 101/255, green: 101/255, blue: 101/255, opacity: 1.0))
                            .font(.system(size: 18))
                    }
                    Text("領取期限：\(food.Time)")
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 101/255, green: 101/255, blue: 101/255, opacity: 1.0))
                }
                .padding(.leading, 12.0)
            
            }
        }
        .padding(.all,20)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color:Color(red: 118/255, green: 81/255, blue: 4/255, opacity: 0.2),
                radius: 5.0,
                x: CGFloat(10),
                y: CGFloat(10))
    }
}

struct FoodRow_Previews: PreviewProvider {
    static var previews: some View {
        FoodRow(food: Food(
            IconImage:"shop_1",
            ShopName:"好好吃餐房",
            FoodImage:"shop_1",
            FoodName:"培根義大利麵",
            Price:"10",
            Add:"台北市大安區復興南路",
            Time:"2020/8/15"
        ))
        .previewLayout(.sizeThatFits)
    }
}
