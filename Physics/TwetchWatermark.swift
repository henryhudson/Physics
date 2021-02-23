//
//  TwetchWatermark.swift
//  TwetchWaterMark
//
//  Created by Henry Hudson on 09/07/2020.
//

import SwiftUI

struct TwetchWatermark: View {
    @State var animate: Bool = false
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(Color.red).opacity(0.9)
                    .frame(width: rectHeight * goldenRatio, height: rectHeight, alignment: .center)
                    .offset(x: animate ? -3 : -10, y: animate ? -3 : -10)
                    .blendMode(.screen)
                    .shadow(color: .red, radius: 5)
                    .animation(Animation.easeInOut(duration: 0.5).repeatForever())
                
                Rectangle()
                    .fill(Color.blue).opacity(0.9)
                    .frame(width: rectHeight * goldenRatio, height: rectHeight, alignment: .center)
                    .offset(x: animate ? 3 : 10, y: animate ? 3 : 10)
                    .blendMode(.screen)
                    .shadow(color: .blue, radius: 5)
                    .animation(Animation.easeInOut(duration: 0.5).repeatForever())

                Rectangle()
                    .fill(Color.green)
                    .frame(width: rectHeight * goldenRatio, height: rectHeight, alignment: .center)
                    .blendMode(.screen)
                    .shadow(color: .black, radius: 2, x: 1, y: 1)
                    .shadow(color: .white, radius: 2, x: -1, y: -1)
        
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: rectHeight * goldenRatio, height: rectHeight, alignment: .center)
                    .blendMode(.screen)
                    

                Rectangle()
                    .fill(Color.red)
                    .frame(width: rectHeight * goldenRatio, height: rectHeight, alignment: .center)
                    .blendMode(.screen)
                
                Text("@7161")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    .bold()
                    .shadow(radius: 1)


            }
            .onAppear {
                withAnimation() {
                    self.animate = true
                        
                }
                
            }
            .animation(.spring() )
        }
        
    }
    
    // magic numbers
    private var rectHeight: CGFloat = 88
    private var goldenRatio: CGFloat = 1.618
    
    
}

struct TwetchWatermark_Previews: PreviewProvider {
    static var previews: some View {
        TwetchWatermark()
    }
}
