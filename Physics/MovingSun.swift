//
//  MovingSun.swift
//  Physics
//
//  Created by Henry Hudson on 16/07/2020.
//

import SwiftUI

struct MovingSun: View {
    @State private var sunMoving = false
    @State private var gradientChanging = false
    
    @State var gradient = [Color.red, Color.orange, Color.yellow, Color.orange, Color.red]
    @State var startPoint = UnitPoint(x: 0, y: 0)
    @State var endPoint = UnitPoint(x: 0, y: 2)
    
    var body: some View {
        
        
        ZStack {
//            LinearGradient(gradient: Gradient(colors: [gradientChanging ? Color.red : Color.yellow, gradientChanging ? Color.yellow : Color.red]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                .edgesIgnoringSafeArea(.all)
//
//                .onAppear {
//                    withAnimation(.linear(duration: 10)) {
//                        gradientChanging.toggle()
//                    }
//                }
            LinearGradient(gradient: Gradient(colors: self.gradient), startPoint: self.startPoint, endPoint: self.endPoint)
                .onAppear {
                    withAnimation(.linear(duration: 10)) {
                        startPoint = UnitPoint(x: 0, y: -1)
                        endPoint = UnitPoint(x: 1, y: 1)
                    }
                }
                .edgesIgnoringSafeArea(.all)
            
            SunView()
                .offset(x: -500, y: 00)
                .rotationEffect(.degrees(sunMoving ? 180 : 0), anchor: .center)
                .animation(.linear(duration: 10))
                

        }
        .onAppear {
            sunMoving.toggle()
        }
            
    }
}

struct MovingSun_Previews: PreviewProvider {
    static var previews: some View {
        MovingSun()
            .preferredColorScheme(.light)
    }
}
