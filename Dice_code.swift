//
//  ContentView.swift
//  Dice_SwiftUI
//
//  Created by Sara Miranda on 14/02/23.
//

import SwiftUI


struct ContentView: View {
    @State var dice : [Image] =
    [Image("uno"), Image( "dos"),Image("tres"),Image("cuatro"),Image("cinco"),Image("seis")]
    @State var num: [Int] = [0,1,2,3,4,5]
    @State var index = 0
    var body: some View {
        ZStack{
            Image("fondo")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                
            VStack {
                Text("DICE APP")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                dice[index]
                    .resizable()
                    .frame(width: 300, height: 300)
                
                Button("Randomize"){
                    index = num.randomElement()!
                    
                   
                }
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .buttonStyle(.bordered)
                    .background(Color.blue)
                    .tint(.blue)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
