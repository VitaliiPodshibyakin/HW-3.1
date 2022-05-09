//
//  CircleView.swift
//  HW-3.1
//
//  Created by Виталий Подшибякин on 09.05.2022.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    @State var opacity: Double
    
    var body: some View {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(color)
                .opacity(opacity)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, opacity: 1)
    }
}
