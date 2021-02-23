//
//  KeplersThirdLawView.swift
//  Physics
//
//  Created by Henry Hudson on 30/07/2020.
//

import SwiftUI

private let neptuneGradient = LinearGradient([Color.blue, Color.blue.opacity(0.75), Color.blue, Color.blue.opacity(0.75)], to: .top)

private let uranusGradient = LinearGradient([Color(#colorLiteral(red: 0.388804853, green: 0.7179647088, blue: 0.7627663612, alpha: 1)), Color(#colorLiteral(red: 0.388804853, green: 0.7179647088, blue: 0.7627663612, alpha: 1)).opacity(0.8)], to: .top)


struct KeplersThirdLawView: View {
    @State private var planetMoving = false
    
    private var neptuneOffset: CGFloat = 300
    private var neptuneDuration: Double = 10
    
    private var uranusOffset: CGFloat = 200
    private var uranusDuration: Double = 5.44
    var body: some View {
        ZStack {
            Color.black
            
            SunView()
                .frame(width: 100)
            
            Circle()
                .stroke(style: StrokeStyle(
                            lineWidth: 1,
                            dash: [4, 20]))
                .foregroundColor(.white)
                .frame(600)
                .padding()
                
            Circle()
                .fill(neptuneGradient)
                .frame(49.5)
                .offset(x: -neptuneOffset, y: 00)
                .rotationEffect(.degrees(planetMoving ? 360 : 0), anchor: .center)
                .animation(.linear(duration: neptuneDuration))
            
            Circle()
                .stroke(style: StrokeStyle(
                            lineWidth: 1,
                            dash: [4, 20]))
                .foregroundColor(.white)
                .frame(400)
                .padding()
                
    
            Circle()
                .fill(uranusGradient)
                .frame(51.1)
                .offset(x: -uranusOffset, y: 00)
                .rotationEffect(.degrees(planetMoving ? 360 : 0), anchor: .center)
                .animation(.linear(duration: uranusDuration))
                
            
        }
        .onAppear {
            planetMoving = true
        }
        .onTapGesture {
            planetMoving.toggle()
        }

        .edgesIgnoringSafeArea(.all)
    }
}

struct KeplersThirdLawView_Previews: PreviewProvider {
    static var previews: some View {
        KeplersThirdLawView()
    }
}

