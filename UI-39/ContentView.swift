//
//  ContentView.swift
//  UI-39
//
//  Created by にゃんにゃん丸 on 2020/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    @State var count = 0
    var body: some View{
        
        ZStack{
            
            Button(action: {
                
                print("Push")
                self.count += 1
                
            }){
                
                Image(systemName: "bell.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.green)
            .clipShape(Circle())
            
            
            if count != 0{
                
                Text("\(count)")
                    .padding(6)
                    .foregroundColor(.black)
                    .background(Color.white)
                    .clipShape(Circle())
                    .offset(x: 15, y: -27)
                
                
            }
            
           
            
        }.animation(.spring())
        
        
    }
}
