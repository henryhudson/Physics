//
//  Gases.swift
//  Feynman Physics
//
//  Created by Henry Hudson on 04/06/2020.
//  Copyright © 2020 Henry Hudson. All rights reserved.
//

import SwiftUI

struct Gases: View {
    let CompressingGasAndTemperature = "When A gas is compressed slowly, the temperature of the gas increases. When a gas is under slow expansion the temperature decreases"
    var body: some View {
        Text(CompressingGasAndTemperature)
            .frame(width: Constants.screenSize.width * 0.9)
    }
}

struct Gases_Previews: PreviewProvider {
    static var previews: some View {
        Gases()
    }
}
