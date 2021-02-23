//
//  Keplers Laws.swift
//  Physics
//
//  Created by Henry Hudson on 17/07/2020.
//

import SwiftUI

private let keplersFirstLaw = "Each planet moves around the sun in an ellipse, with the sun at a focal point"

private let keplersSecondLaw = "The radius vector from the sun to the planet sweeps out equal areas in equal times"

private let keplersThirdLaw = "The square of the time period of a planet is proportional to the cube of the semimajor axes of its orbit."

let keplersLaws: [String] = [keplersFirstLaw, keplersSecondLaw, keplersThirdLaw]

struct Keplers_Laws: View {
    
    var body: some View {
        TabView {
            ZStack(alignment: .center) {
                Image("Johannes Kepler")
                    .resizable()
                
                VStack {
                    Text("Johannes Kepler")
                        .font(.system(size: 52))
                        .bold()
                        .padding()
                        .shadow(2)
                    
                    Text("1571 - 1630")
                        .font(.system(size: 33))
                        .bold()
                        .shadow(2)
                }
                .offset(y: Constants.screenSize.height / 3)

            }
            
            VStack(alignment: .center) {
                ZStack {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 270, height: 20)
                        .offset(y: 8)
                    
                    Text("Keplers first law")
                        .font(.largeTitle)
                        .bold()
                        .align(.center)
                }
                Text(keplersFirstLaw)
                    .font(.largeTitle)
                    .bold()
                    .align(.center)
                    .padding()
                
                KeplersFirstLaw()

            }
            
            VStack(alignment: .center) {
                Group {
                    ZStack {
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 320, height: 20)
                            .offset(y: 8)
                        
                        Text("Keplers second law")
                            .font(.largeTitle)
                            .bold()
                            .align(.center)
                    }
                    
                    
                    Text(keplersSecondLaw)
                        .font(.largeTitle)
                        .bold()
                        .align(.center)
                        .padding()
                
                }
                .offset(y: UIScreen.main.bounds.height / 25)
                
                KeplersSecondLaw()

            }
            
            VStack(alignment: .center) {
                Group {
                    ZStack {
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 270, height: 20)
                            .offset(y: 8)
                        
                        Text("Keplers third law")
                            .font(.largeTitle)
                            .bold()
                            .align(.center)
                    }
                    
                    Text(keplersThirdLaw)
                        .font(.largeTitle)
                        .bold()
                        .align(.center)
                        .padding()
                
                }
                .offset(y: UIScreen.main.bounds.height / 25)
                
                KeplersThirdLawView()
            }
        }
        .tabViewStyle(PageTabViewStyle() )
    }
    
}

struct Keplers_Laws_Previews: PreviewProvider {
    static var previews: some View {
        Keplers_Laws()
            .preferredColorScheme(.dark)
    }
}
