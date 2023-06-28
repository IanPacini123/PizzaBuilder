//
//  Pizza.swift
//  Test Builder
//
//  Created by Ian Pacini on 27/06/23.
//

import Foundation

extension PizzaBuilder {
    
    func checkExist(topping: String) -> Bool {
        for i in pizza.pizzaStack {
            if i == topping { return true }
        }
        return false
    }
    
    func toppingOrder(topping: String) -> Int {
        switch(topping) {
        case "Cheese":
            return 0
        case "Pepperoni":
            return 1
        case "Onion":
            return 2
        default:
            return 3
        }
    }
    
    func toppingSort() {
        pizza.pizzaTopping.sort{
            toppingOrder(topping: $0) < toppingOrder(topping: $1)
        }
    }
    
    func small() -> PizzaBuilder {
        pizza.pizzaSize = sizes.small.rawValue
        return self
    }
    
    func large() -> PizzaBuilder {
        pizza.pizzaSize = sizes.large.rawValue
        return self
    }
    
    func addCheese() -> PizzaBuilder {
        if checkExist(topping: "Cheese") { return self }
        
        pizza.pizzaTopping.append("Cheese")
        
        toppingSort()
        return self
    }
    
    func addPepperoni() -> PizzaBuilder {
        if checkExist(topping: "Pepperoni") { return self }
        
        pizza.pizzaTopping.append("Pepperoni")
        
        toppingSort()
        return self
    }
    
    func addOnion() -> PizzaBuilder {
        if checkExist(topping: "Onion") { return self }
        
        pizza.pizzaTopping.append("Onion")
        
        toppingSort()
        return self
    }
    
    func addParsley() -> PizzaBuilder {
        if checkExist(topping: "Parsley") { return self }
        
        pizza.pizzaTopping.append("Parsley")
        
        toppingSort()
        return self
    }
    
}
