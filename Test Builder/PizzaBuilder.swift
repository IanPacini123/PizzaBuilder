//
//  PizzaModel.swift
//  Test Builder
//
//  Created by Ian Pacini on 27/06/23.
//
import SwiftUI

enum sizes: String {
    case small = "SmallPizza"
    case large = "LargePizza"
}

enum toppings: String {
    case cheese = "Cheese"
    case pepperoni = "Pepperoni"
    case onion = "Onion"
    case parsley = "Parsley"
}

class PizzaViewModel: ObservableObject {
    
    @Published var pizzaSize: String = ""
    @Published var pizzaTopping: [String] = []
    var pizzaStack: [String] {
        var pizzaStack: [String] = [pizzaSize]
        pizzaStack.append(contentsOf: pizzaTopping)
        return pizzaStack
    }
    
}

struct PizzaBuilder: View {
    
    @ObservedObject var pizza: PizzaViewModel
    
    var body: some View {
        ZStack{
            ForEach(pizza.pizzaStack, id: \.self) { item in
                Image(item)
            }
        }
    }
    
}
