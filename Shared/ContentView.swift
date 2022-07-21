//
//  ContentView.swift
//  Shared
//
//  Created by Cai Jain on 18/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var color = Color.white
    @State private var date = Date()
    @State private var number = 0
    @State private var celsius = 0.0
    var body: some View {
        VStack {
            Group{
                Text("Hello, world!")
                    .padding()
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.blue)
                    .frame(width: 100, height: 100, alignment: .center )
                
                Label("Square Root", systemImage: "x.squareroot")
                    .padding()
                
                Button(action: {}) {
                    Text("Click Me")
                }
                Image("Campus")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                
                Link("Northwestern CTD", destination: URL(string: "https://www.ctd.northwestern.edu")!)
                    .padding()
            }
            
            Group {
                ColorPicker("Pick a Color", selection: $color)
                    .frame(width: 150, height: 50, alignment: .center)
                DatePicker("Pick a Date", selection: $date)
                    .frame(width: 320, height: 50, alignment: .center)
                HStack {
                    Text("Pick a number")
                    Picker("", selection: $number) {
                        Text("1").tag(1)
                        Text("2").tag(2)
                        Text("3").tag(3)
                        Text("4").tag(4)
                        Text("5").tag(5)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .frame(width: 200, height: 50, alignment: .center)
                    .padding()
                }
                Slider(value: $celsius, in: -100...100)
                Text("\(celsius, specifier: "%.1f") Celsius is \(celsius * 9 / 5 + 32, specifier: "%.1f") Fahrenheit")
                
            }
        }
        .background(color)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
