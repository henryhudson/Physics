//
//  PlanetsInOutSolarSystem.swift
//  Physics
//
//  Created by Henry Hudson on 03/08/2020.
//

import SwiftUI
import SceneKit


struct PlanetsInOutSolarSystem: View {
    @State var models = [
        Model(id: 0, name: "Sun", modelName: "Sun.usdz", details: "The Sun"),
        Model(id: 1, name: "Mercury", modelName: "Mercury.usdz", details: "First planet from the Sun"),
        Model(id: 2, name: "Venus", modelName: "Venus.usdz", details: "Second planet from the Sun"),
        Model(id: 3, name: "Earth", modelName: "Earth.usdz", details: "Third planet from the Sun"),
        Model(id: 4, name: "Mars", modelName: "Mars.usdz", details: "Fourth planet from the Sun"),
        Model(id: 5, name: "Jupiter", modelName: "Jupiter.usdz", details: "Fith planet from the Sun"),
        Model(id: 6, name: "Saturn", modelName: "Saturn.usdz", details: "Sixth planet from the Sun."),
        Model(id: 7, name: "Uranus", modelName: "Uranus.usdz", details: "Seventh planet from the Sun."),
        Model(id: 8, name: "Neptune", modelName: "Neptune.usdz", details: "Eighth and final planet from the Sun.")
    ]
    
    @State var index = 0
    
    
    var body: some View {
        ZStack {
            
            VStack {
                SceneView(
                    scene: SCNScene(named: models[index].modelName),
                    options: [.autoenablesDefaultLighting, .allowsCameraControl]
                )
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
                
                ZStack {
                    HStack {
                        Button(action: {
                            withAnimation {
                                if index > 0 {
                                    index -= 1
                                }
                            }
                        }) {
                            Image(systemName: "arrowshape.zigzag.right.fill")
                                .font(.system(size: 42, weight: .bold))
                                .rotationEffect(.degrees(180))
                                .opacity(index == 0 ? 0.3: 1)
                        }
                        .disabled(index == 0 ? true : false)
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            withAnimation {
                                if index < models.count {
                                    index += 1
                                }
                            }
                        }) {
                            Image(systemName: "arrowshape.zigzag.right.fill")
                                .font(.system(size: 42, weight: .bold))
                                .opacity(index == models.count - 1 ? 0.3 : 1)
                            
                        }
                        .disabled(index == models.count - 1 ? true : false )
                    }
                    Spacer()
                    VStack {
                    Text(models[index].name)
                        .font(.system(size: 42, weight: .bold))
                    
                        VStack(alignment: .leading, spacing: 15) {

                            
                            Text(models[index].details)
                                .padding()
                        }
                    }
                }
                .padding()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}


struct Model: Identifiable {
    var id: Int
    var name: String
    var modelName: String
    var details: String
    
}
struct PlanetsInOutSolarSystem_Previews: PreviewProvider {
    static var previews: some View {
        PlanetsInOutSolarSystem()
    }
}
