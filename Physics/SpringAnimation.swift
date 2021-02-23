//
//  SpringAnimation.swift
//  Physics
//
//  Created by Henry Hudson on 09/07/2020.
//

import SwiftUI

struct SpringAnimation: View {
    @State private var change = false
    private var arrayOfMasses = [0.01, 0.1, 1, 10, 50]
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            
            
            
            VStack(spacing: 10) {
                Button("Release") {
                    change.toggle()
                }
                Spacer()
               
                
                HStack(alignment: .bottom) {
                    
                    ForEach(0..<arrayOfMasses.count){ i in
                        VStack{

                            Rectangle()
                                .fill(Color(.systemOrange))
                                .frame(width: 5, height: change ? 400 : 25)

                            Circle()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.gray)
                            Spacer()
                            HStack {
                                Text(arrayOfMasses[i].description)
                                    .foregroundColor(.white)
                                    .bold()
                                
                                Text("(g)")
                                    .foregroundColor(.white)
                                    .bold()
                            }


                        }
                        .animation(Animation.interpolatingSpring(mass: arrayOfMasses[i], stiffness: 50, damping: 7))
                    }
                }
                Spacer()
            }
        }
    }
}



struct SpringAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SpringAnimation()
    }
}
