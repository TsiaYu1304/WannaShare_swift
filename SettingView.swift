//
//  SettingView.swift
//  Test_WannaShare
//
//  Created by 蔡瑀 on 2020/8/2.
//  Copyright © 2020 蔡瑀. All rights reserved.
//

import SwiftUI
struct NavigationBarModifier: ViewModifier {
        
    var backgroundColor: UIColor?
    
    init( backgroundColor: UIColor?) {
        self.backgroundColor = backgroundColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = .clear
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = .white

    }
    
    func body(content: Content) -> some View {
        ZStack{
            content
            VStack {
                GeometryReader { geometry in
                    Color(self.backgroundColor ?? .clear)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}
extension View {
 
    func navigationBarColor(_ backgroundColor: UIColor?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor))
    }

}

struct SettingView: View {
      let col1 = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
    var body: some View {

        List{
            Text("更改名稱")
            Text("更改密碼")
            Text("允許推播")
            Button(action:{
            }){
                Text("登出")
            }
                
            
            
        }
       .foregroundColor(Color(red: 101/255, green: 101/255, blue: 101/255, opacity: 1.0))
           
              
      
        .navigationBarTitle(Text("設定"), displayMode: .inline)
          
            .navigationBarColor(UIColor(red: 240/255, green: 162/255, blue: 2/255, alpha: 1))
}
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SettingView()
           
     
        }
      
        
    }
}
