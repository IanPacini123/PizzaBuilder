//
//  ContentView.swift
//  Test Builder
//
//  Created by Ian Pacini on 27/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PizzaBuilder(pizza: PizzaViewModel())
            .small()
            .addPepperoni()
            .addOnion()
            .addParsley()
            .addCheese()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
