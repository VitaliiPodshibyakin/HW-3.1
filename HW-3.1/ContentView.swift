//
//  ContentView.swift
//  HW-3.1
//
//  Created by Виталий Подшибякин on 09.05.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    @State private var currentLight = CurrentLight.red
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    @State private var title = "Start"

    private func nextColor() {
        switch currentLight {
        case .red:
            greenOpacity = lightIsOff
            redOpacity = lightIsOn
            title = "Next"
            currentLight = CurrentLight.yellow
        case .yellow:
            redOpacity = lightIsOff
            yellowOpacity = lightIsOn
            title = "1"
            currentLight = CurrentLight.green
        case .green:
            yellowOpacity = lightIsOff
            greenOpacity = lightIsOn
            title = "2"
            currentLight = CurrentLight.red
        }

    }
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack (alignment: .center, spacing: 60.0){
                CircleView(color: .red, opacity: redOpacity)
                CircleView(color: .yellow, opacity: yellowOpacity)
                CircleView(color: .green, opacity: greenOpacity)
                ButtonView(action: nextColor, title: title)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
