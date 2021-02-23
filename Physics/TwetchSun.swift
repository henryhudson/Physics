//
//  TwetchSun.swift
//  Physics
//
//  Created by Henry Hudson on 17/07/2020.
//

import SwiftUI

struct TwetchSun: View {
    @State private var sunMoving = false
    @State private var gradientChanging = false
    
    @State var gradient = [Color.red, Color.orange, Color.yellow, Color.orange, Color.red]
    @State var startPoint = UnitPoint(x: 0, y: 0)
    @State var endPoint = UnitPoint(x: 0, y: 1)
    
    var body: some View {
        
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: self.gradient), startPoint: self.startPoint, endPoint: self.endPoint)
                .edgesIgnoringSafeArea(.all)
            
            SunTwetchView()
                .offset(x: -250, y: 00)
                .rotationEffect(.degrees(sunMoving ? 360 : 0), anchor: .center)
                .animation(.linear(duration: 10))
            
            Image("TwetchLogo")
                .foregroundColor(.white)
                
            TwetchWatermark()
                .offset(x: 0, y: 120)

        }
        .onTapGesture {
            sunMoving.toggle()
            
            withAnimation(.linear(duration: 10)) {
                startPoint = UnitPoint(x: 0, y: -1)
                endPoint = UnitPoint(x: 1, y: 1)
            }
        }
            
    }
}


struct TwetchSun_Previews: PreviewProvider {
    static var previews: some View {
        TwetchSun()
    }
}
