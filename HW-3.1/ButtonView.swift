//
//  ButtonView.swift
//  HW-3.1
//
//  Created by Виталий Подшибякин on 09.05.2022.
//

import SwiftUI

struct ButtonView: View {
    let action: () -> Void
    let title: String
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .foregroundColor(Color.white)
                .frame(width: 200.0, height: 50.0)
                .background(Color.blue)
                .cornerRadius(15)
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 5))

        }
    }
}


struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(action: {}, title: "Start")
    }
}
