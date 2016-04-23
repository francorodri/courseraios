//: Playground - noun: a place where people can play

import UIKit
var num : Int  = 0
for num in 0...100 {
    if num % 5 == 0 {
        print ("# \(num) Bingo!!")
    }
    
    if num % 2 == 0 {
        print ("# \(num) par!!")
    }
    else {
        print ("# \(num) impar!!")
    }
    
    if num >= 30 && num <= 40 {
        print ("# \(num) Viva Swift!!")
    }
}