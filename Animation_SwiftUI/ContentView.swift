//
//  StarterView.swift
//  Animation_SwiftUI
//
//  Created by Дмитрий on 27.01.2023.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "rosette")
                    Text("Main")
                }

            CartRacingView()
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("CartRacing")
                }

            AwardsView()
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("Awards")
                }
            SwiftView()
                .tabItem {
                    Image(systemName: "trash.fill")
                    Text("Trash")
                }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
