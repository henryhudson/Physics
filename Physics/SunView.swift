//
//  SunView.swift
//  Physics
//
//  Created by Henry Hudson on 16/07/2020.
//

import SwiftUI

struct SunView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.white)
                
                .glow(color: .yellow, radius: 10)
                .innerShadow(using: Circle())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        //.background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}

struct SunTwetchView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.white)
                .frame(width: 300, height: 300)
                .glow(color: .yellow, radius: 10)
                .innerShadow(using: Circle())
            
            Image("TwetchSymbol")
                .resizable()
                .frame(width: 333 * 1.2, height: 250 * 1.2)
//                .glow(color: .yellow, radius: 2)
                .offset(x: 0, y: -5)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        //.background(Color.black)
        .edgesIgnoringSafeArea(.all)
    }
}

struct SolarEclipse: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.black)
                .frame(width: 300, height: 300)
                .glow(color: .yellow, radius: 10)
                .innerShadow(using: Circle())
        }
    }
}

extension View {
    func glow(color: Color = .red, radius: CGFloat = 20) -> some View {
        self
            .overlay(self.blur(radius: radius / 3))
            .shadow(color: color, radius: radius)
            .shadow(color: color, radius: radius)
            .shadow(color: color, radius: radius)

    }
}

extension View {
    func multiColorGlow() -> some View {
        ForEach(0..<2) { i in
            Rectangle()
                .fill(AngularGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue, .purple, .red]), center: .center))
                .frame(width: 400, height: 400)
                .mask(self.blur(radius: 20))
                .overlay(self.blur(radius: 5 - CGFloat(i * 5)))
        }
    }
}

extension View {
    func innerShadow<S: Shape>(using shape: S, angle: Angle = .degrees(0), color: Color = .orange, width: CGFloat = 6, blur: CGFloat = 6) -> some View {
        
        let finalX = CGFloat(cos(angle.radians - .pi / 2))
        let finalY = CGFloat(sin(angle.radians - .pi / 2))
        
        return self
            .overlay(
                shape
                    .stroke(color, lineWidth: width)
                    .offset(x: finalX * width * 0.6, y: finalY * width * 0.6 )
                    .blur(radius: blur)
                    .mask(shape)
            )
    }
}


struct SunView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            SunView()
            SolarEclipse()
        }
            
    }
}
