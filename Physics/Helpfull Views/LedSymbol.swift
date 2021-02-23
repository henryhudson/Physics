//
//  LedSymbol.swift
//  Physics
//
//  Created by Henry Hudson on 01/08/2020.
//

import SwiftUI

struct LedSymbol: View {
    var body: some View {
        ZStack {
            Color.blue
            
            Circle()
                .stroke(lineWidth: 4)
                .frame(50)
                .glow(color: .yellow, radius: 5)
            
            Circle()
                .trim(from: 0.5, to: 1)
                .stroke(lineWidth: 5)
                .frame(160)
                .offset(x: 0.0, y: -55)
                
            
            Group {
                Rectangle()
                    .stroke(lineWidth: 4)
                    .frame(width: 200, height: 15)
                    .offset(y: 75)
            
            
                Rectangle()
                    .stroke(lineWidth: 4)
                    .frame(width: 1, height: 120)
                    .offset(x: -80, y: 4 )
                
                Rectangle()
                    .stroke(lineWidth: 4)
                    .frame(width: 1, height: 120)
                    .offset(x: 80, y: 4)
                
                Rectangle()
                    .stroke(lineWidth: 4)
                    .frame(width: 22, height: 1)
                    .offset(x: -36)
                
                Rectangle()
                    .stroke(lineWidth: 4)
                    .frame(width: 22, height: 1)
                    .offset(x: 36)
                
                Rectangle()
                    .stroke(lineWidth: 4)
                    .frame(width: 1, height: 65)
                    .offset(x: -46.5, y: 33)
                
                Rectangle()
                    .stroke(lineWidth: 4)
                    .frame(width: 1, height: 65)
                    .offset(x: 46.5, y: 33)
                
                Rectangle()
                    .stroke(lineWidth: 4)
                    .frame(width: 1, height: 65)
                    .offset(x: -46.5, y: 115)
                
                Rectangle()
                    .stroke(lineWidth: 4)
                    .frame(width: 1, height: 65)
                    .offset(x: 46.5, y: 115)
            }
                
        }
        //.glow(color: , radius: 5)
    }
}

struct LedSymbol_Previews: PreviewProvider {
    static var previews: some View {
        LedSymbol()
            .preferredColorScheme(.dark)
    }
}
