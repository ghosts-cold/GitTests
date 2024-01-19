//
//  ContentView.swift
//  GitTests
//
//  Created by Дима Васильев on 19.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State var isTap = false
    
    let gradientColor = LinearGradient(colors: [Color.pink,Color.purple], startPoint: .top, endPoint: .bottom)
    let gradientColorIsTap = LinearGradient(colors: [Color.mint,Color.primary], startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.cyan)
                .opacity(0.5)
                .frame(width: 300, height: 1000)
                .rotationEffect(Angle(degrees: 400))
                .offset(y: -400)
            VStack{
                VStack {
                    Image(systemName: isTap ? "chevron.down" : "arrow.down" )
                        .resizable()
                    .frame(width: 100, height: 130, alignment: .center)
                }
                .foregroundStyle(isTap ? gradientColor : gradientColorIsTap)
                .rotationEffect(Angle(degrees: isTap ? 360 : 0.0))
                    .onTapGesture {
                        withAnimation(.spring(response: 0.2, dampingFraction: 0.4, blendDuration: 1)){
                            isTap.toggle()
                        }
                        
            }
           Text("Welcome to my Git.")
                    .font(.largeTitle)
                Text("Tested test upload")
                    .font(.subheadline)
                    .opacity(0.6)
                    
            }
            
            Rectangle()
                .foregroundStyle(.cyan)
                .opacity(0.5)
                .frame(width: 300, height: 1000)
                .rotationEffect(Angle(degrees: 400))
                .offset(y: 500)
        }
    }
}

#Preview {
    ContentView()
}
