//
//  SwiftView.swift
//  Animation_SwiftUI
//
//  Created by Дмитрий on 29.01.2023.
//

import SwiftUI

struct SwiftView: View {
    
    @State private var start = false
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                HStack(spacing: 15) {
                    letterOfSwift(
                        start: start,
                        title: "S",
                        color: .red,
                        animation: .easeIn.speed(0.3)
                      
                    )
                    letterOfSwift(
                        start: start,
                        title: "W",
                        color: .red,
                        animation: .easeIn.speed(0.35)
                    )
                    letterOfSwift(
                        start: start,
                        title: "I",
                        color: .orange,
                        animation: .easeIn.speed(0.40)
                    )
                    letterOfSwift(
                        start: start,
                        title: "F",
                        color: .orange,
                        animation: .easeIn.speed(0.45)
                    )
                    letterOfSwift(
                        start: start,
                        title: "T",
                        color: .orange,
                        animation: .easeIn.speed(0.50)
                    )
                    
                }
                .offset(y: start ? -geometry.size.height / 20 : geometry.size.height / 100)
                .padding(.leading)
                
            }
            
            .onTapGesture {
                start.toggle()
            }
        }
    }
}
struct letterOfSwift: View {
    let start: Bool
    let title: String
    let color: Color
    let animation: Animation
    
    var body: some View {
        VStack {
            Circle()
                .overlay {
                    Text(title)
                        .font(Font.system(size: 40, weight: .light, design: .serif))
                        .foregroundColor(.black)
                }
                .frame(width: 60, height: 60)
                .font(.title)
                .foregroundColor(color)
                .offset(x: start ? UIScreen.main.bounds.width - 150 : 0)
                .animation(animation, value: start)
        }
    }
}

struct SwiftView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftView()
    }
}
