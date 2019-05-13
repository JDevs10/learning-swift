//
//  main.swift
//  calculatriceNew
//
//  Created by Jean-Laurent on 24/04/2019.
//  Copyright © 2019 Jean-Laurent. All rights reserved.
//

import Foundation

print("Hello, World!")

class Calcul{
    var nb1:Int
    var nb2:Int
    
    init() {
        self.nb1 = 0
        self.nb2 = 0
    }
    
    init(nb1:Int, nb2:Int) {
        self.nb1 = nb1
        self.nb2 = nb2
    }
    
    func start() {
        var result = "yes"
        
        repeat{
            print("Please enter number 1:")
            let nomber1 = readLine()
            
            print("What operation ?  '+ - * /':")
            let option = readLine()
            
            print("Please enter number 2:")
            let nomber2 = readLine()
            
            var cal = Calcul(nb1: Int(nomber1!)!, nb2: Int(nomber2!)!)
            
            cal.doCal(opt: option!)
            
            print("Would you like to continu ?")
            result = readLine()!
            
        }while(result == "yes" || result == "y")
    }
    
    func doCal(opt:String){
        switch opt {
        case "+":
            print("\(nb1) + \(nb2) = \(nb1+nb2)")
            break
        case "-":
            print("\(nb1) - \(nb2) = \(nb1-nb2)")
            break
        case "*":
            print("\(nb1) * \(nb2) = \(nb1*nb2)")
            break
        case "/":
            print("\(nb1) / \(nb2) = \(nb1/nb2)")
            break
        default:
            print("Nothing")
        }
    }
}

var go = Calcul()
go.start()

print("DONE !!!")

