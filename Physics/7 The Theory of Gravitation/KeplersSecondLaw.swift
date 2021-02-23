//
//  KeplersSecondLaw.swift
//  Physics
//
//  Created by Henry Hudson on 30/07/2020.
//

import SwiftUI
import PureSwiftUI


struct KeplersSecondLaw: View {
    @State private var animatedTimeRemaining = 5.0
        
    private let uranusGradient = LinearGradient([Color(#colorLiteral(red: 0.388804853, green: 0.7179647088, blue: 0.7627663612, alpha: 1)), Color(#colorLiteral(red: 0.388804853, green: 0.7179647088, blue: 0.7627663612, alpha: 1)).opacity(0.95)], to: .top)
    
    private var uranusOffset: CGFloat = 355
    
    @State private var planetMoving = false
    
    var body: some View {
        ZStack {
            Ellipse()
                .stroke(lineWidth: 2)
                .padding(25)
                .frame(width: Constants.screenSize.width,  height: Constants.screenSize.width * 0.9)
            

            
            Pie(startAngle: Angle.radians( 2.6 ), endAngle: Angle.radians( 3.6 ))
                .foregroundColor(Color.purple.opacity(0.42))
                .frame(width: Constants.screenSize.width,  height: Constants.screenSize.width * 0.80)
                .offset(x: -53)
            
            Pie(startAngle: Angle.radians( -0.2 ), endAngle: Angle.radians( 0.2 ))
                .foregroundColor(Color.purple.opacity(0.42))
                .frame(width: Constants.screenSize.width,  height: Constants.screenSize.width * 1)
                .scale(1.07)
                .offset(x: -53)
            
            SunView()
                .frame(width: 100, height: 100)
                .offset(x: -53)
            
            Group {
                Circle()
                    .fill(uranusGradient)
                    .frame(49.5)
                    .offset(x: -uranusOffset, y: 00)
                    .rotationEffect(.radians(planetMoving ? 2.92 : 3.37), anchor: .center)
                    .animation(.linear(duration: animatedTimeRemaining))
            
                Circle()
                    .fill(uranusGradient)
                    .frame(49.5)
                    .offset(x: uranusOffset, y: 00)
                    .rotationEffect(.radians(planetMoving ? 2.675 : 3.55), anchor: .center)
                    .animation(.linear(duration: animatedTimeRemaining))
            }

            .onAppear {
                planetMoving = true
            }
            .onTapGesture {
                planetMoving.toggle()
            }
        }
    }
}
     

struct KeplersSecondLaw_Previews: PreviewProvider {
    static var previews: some View {
        KeplersSecondLaw()
            .preferredColorScheme(.dark)
    }
}
