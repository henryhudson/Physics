//
//  SIUnitsView.swift
//  Physics
//
//  Created by Henry Hudson on 16/07/2020.
//

import SwiftUI
import PureSwiftUI

private let numSegments = 7
private let innerRadiusRatio: CGFloat = 0.4
private let strokeStyle = StrokeStyle(lineWidth: 2, lineJoin: .round)
private let polarLayoutConfig = LayoutGuideConfig.polar(rings: 4, segments: 7)


struct SIUnitsView: View {
    var body: some View {
        VStack {
            RadialLayoutGuide()
            
            Heptagon()
                .stroke(lineWidth: 2)
                .layoutGuide(.polar(rings: 2, segments: 7))
                .showLayoutGuides(true)
                .shadow(radius: 1)
            
            Circle()
                .layoutGuide(polarLayoutConfig)
                .showLayoutGuides(true)
        }
    }
}

struct RadialLayoutGuide: View {
    
    var body: some View {
        Circle()
        .stroke(style: strokeStyle)
        
        .layoutGuide(.polar(rings: 1, segments: 7))
        .showLayoutGuides(true)
        .shadow(radius: 1)
        
        
            
    }
}

struct Heptagon: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
    
        var g = LayoutGuide.polar(rect, rings: 1, segments: 7)
        
        path.move(g[1,0])
        
        for segment in 1..<g.yCount {
            path.line(g[1, segment])
        }
        
        path.closeSubpath()
        
        return path
    }
}

struct SIUnitsView_Previews: PreviewProvider {
    static var previews: some View {
        SIUnitsView()
    }
}
