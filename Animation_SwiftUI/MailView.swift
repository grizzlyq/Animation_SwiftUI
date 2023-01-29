//
//  testing.swift
//  Animation_SwiftUI
//
//  Created by Дмитрий on 29.01.2023.
//

import SwiftUI

struct MailView: View {
    @State private var angle: Double = 0
    
    var body: some View {
        VStack {
            Button {
                angle += 90
            } label: {
                
                GeometryReader { geometry in
                    let width = geometry.size.width
                    let height = geometry.size.height
                    
                    let size = min(width, height)
                    let middle = size / 2
                    
                    Path { path in
                        path.move(to: CGPoint(x: 40, y: 180))
                        path.addLine(to: CGPoint(x: 150, y: 180))
                        path.addLine(to: CGPoint(x: 150, y: middle + 17))
                        path.addLine(to: CGPoint(x: 38, y: middle + 17))
                        path.addLine(to: CGPoint(x: 40, y: 180))
                        
                        path.move(to: CGPoint(x: 40, y: 180))
                        path.addLine(to: CGPoint(x: 150, y: middle + 20))
                        path.move(to: CGPoint(x: 150, y: 180))
                        path.addLine(to: CGPoint(x: 40, y: middle + 17))
                        
                            
                    }
                    .stroke(Color.orange, lineWidth: 7)
                    .frame(width: 200, height: 200)
                                        .rotationEffect(.degrees(angle))
                                        .animation(.interpolatingSpring(mass: 2, stiffness: 1, damping: 1, initialVelocity: 4), value: angle)
                }
            }
        }
    }
}

struct AppleView_Previews: PreviewProvider {
    static var previews: some View {
        MailView()
            .frame(width: 200, height: 200)
    }
}
