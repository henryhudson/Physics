//
//  DifferenceBetweenSolidsAndLiquids.swift
//  Feynman Physics
//
//  Created by Henry Hudson on 04/06/2020.
//  Copyright © 2020 Henry Hudson. All rights reserved.
//

import SwiftUI

struct DifferenceBetweenSolidsAndLiquids: View {
    let differenceBetweenSolidsAndLiquids = "In a solid the atoms are arranged in some kind of an array, a cystalline array, and they do not have a random position at long distances; teh position of the atoms on one side of the crystal is determined by that of other atoms millions of atoms away"
    var body: some View {
        Text(differenceBetweenSolidsAndLiquids + "\nPi: \(Double.pi)\n\ne: \(M_E)")
    }
}

struct DifferenceBetweenSolidsAndLiquids_Previews: PreviewProvider {
    static var previews: some View {
        DifferenceBetweenSolidsAndLiquids()
    }
}
