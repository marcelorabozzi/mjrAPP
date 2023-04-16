//
//  View02.swift
//  mjrApp
//
//  Created by Erio Daniel Díaz on 16/04/2023.
//

import SwiftUI

struct View02Demo: View {
    var body: some View {
        View02()
    }
}

struct View02: View {
    @Environment(\.dismiss) var dismiss
    var nombre: String = ""
    var body: some View {
        ZStack {
            Color.red.opacity(0.5)
            VStack {
                VStack {
                    Text("View 02")
                        .font(.system(size: 30, weight: .black))
                    
                }
                .offset(y: 60)
                Spacer()
                VStack {
                    Text("Bienvenido \(nombre)")
                }
                Spacer()
                
                VStack{
                    Button("Previous View") {
                        dismiss()
                    }
                    .frame(width: 300, height: 40)
                    
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 5)
                    .buttonStyle(.plain)
                }
                .offset(y: -50)
            }
        }
        .navigationBarBackButtonHidden(true)
        .edgesIgnoringSafeArea(.all)
    }
}

struct View02Demo_Preview: PreviewProvider {
    static var previews: some View {
        View02Demo()
    }
}
