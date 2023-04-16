//
//  ContentView.swift
//  mjrApp
//
//  Created by Erio Daniel Díaz on 16/04/2023.
//

import SwiftUI

struct View01Demo: View {
    var body: some View {
        View01()
    }
}

struct View01: View {
    @State var View02Enabled: Bool = false
    @State var nombre: String = ""
    var body: some View {
        ZStack {
            NavigationLink(destination: View02(nombre: nombre), isActive: $View02Enabled) {EmptyView()}
            Color.blue.opacity(0.5)
            VStack {
                VStack {
                    Text("View 01")
                        .font(.system(size: 30, weight: .black))
                    TextField("Nombre", text: $nombre)
                        .padding()
                        .frame(width: 300, height: 40)
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(radius: 5)
                }
                .offset(y: 60)
                Spacer()
                VStack{
                    Button("Next View") {
                      View02Enabled = true
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
        .edgesIgnoringSafeArea(.all)
    }
}

struct View01Demo_Preview: PreviewProvider {
    static var previews: some View {
        View01Demo()
    }
}
