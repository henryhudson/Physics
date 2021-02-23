//
//  KeplersFirstLaw.swift
//  Physics
//
//  Created by Henry Hudson on 30/07/2020.
//

import SwiftUI

struct KeplersFirstLaw: View {
    @State private var uranusDuration = 8.0
        
    private let uranusGradient = LinearGradient([Color(#colorLiteral(red: 0.388804853, green: 0.7179647088, blue: 0.7627663612, alpha: 1)), Color(#colorLiteral(red: 0.388804853, green: 0.7179647088, blue: 0.7627663612, alpha: 1)).opacity(0.95)], to: .top)
    
    private var uranusOffset: CGFloat = 355 * 0.9
    
    @State private var planetMoving = false
    var body: some View {
        ZStack {
            Ellipse()
                .stroke(lineWidth: 2)
                .padding(25)
                .frame(width: Constants.screenSize.width * 0.9,  height: Constants.screenSize.width * 0.9)
            
            SunView()
                .frame(width: 100, height: 100)
                //.offset(x: -15)
            
//            Circle()
//                .foregroundColor(.red)
//                .frame(width: 10, height: 10)
            
            Circle()
                .fill(uranusGradient)
                .frame(51.1)
                .offset(x: -uranusOffset)
                .rotationEffect(.degrees(planetMoving ? 360 : 0), anchor: .center)
                .animation(.linear(duration: uranusDuration))
                
        }
        .onAppear{
            planetMoving.toggle()
        }
        .onTapGesture {
            planetMoving.toggle()
        }
        
            
    }
}


struct KeplersFirstLaw_Previews: PreviewProvider {
    static var previews: some View {
        KeplersFirstLaw()
    }
}
