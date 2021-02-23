//
//  BitcoinSymbol.swift
//  Physics
//
//  Created by Henry Hudson on 16/07/2020.
//

import SwiftUI
import PureSwiftUI

private let polarLayoutConfig = LayoutGuideConfig.polar(rings: 4, segments: 7)

struct BitcoinSymbol: View {
    var body: some View {
        ZStack {
            
                SolarEclipse()
                    
            
                Image("Bitcoin")
                    .resizable()
                    .frame(width: 91.6*1.5, height: 126*1.5)
                    .shadow(color: Color(#colorLiteral(red: 0.9169939756, green: 0.7023082972, blue: 0, alpha: 1)), radius: 1, x: 1, y: 1)
                    .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 0.5, x: -1, y: -1)
                    .glow(color: .yellow, radius: 2)
                    .offset(x: 0, y: -5)
        
        }
    }
}




struct BitcoinSymbol_Previews: PreviewProvider {
    static var previews: some View {
        BitcoinSymbol()
    }
}
