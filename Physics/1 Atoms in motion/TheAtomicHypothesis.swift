//
//  TheAtomicHypothesis.swift
//  Feynman Physics
//
//  Created by Henry Hudson on 04/06/2020.
//  Copyright © 2020 Henry Hudson. All rights reserved.
//

import SwiftUI

struct TheAtomicHypothesis: View {
    let theAtomicHypothesis: String = "All things are made of atoms, little particles that move around in perpetual motion, attracting each other when they are a little distant apart, but repelling upon being squeezed into one another"
    var body: some View {
        //Text(theAtomicHypothesis + "\nSize of an atom: \(Distancemesurements.angstrom)m")
            //.frame(width: (Constants.screenSize.width * 0.9)  )
        
        Group{
            
        }
    }
}

struct TheAtomicHypothesis_Previews: PreviewProvider {
    static var previews: some View {
        TheAtomicHypothesis()
    }
}
