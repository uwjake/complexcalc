//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    func mathOp(lhs: Int, rhs: Int, op : (Int, Int) -> Int ) -> Int {
        return op(lhs, rhs)
    }
    
    func add(_ numbers: [Int]) ->Int {
        return numbers.reduce(0, {x, y in return x + y})
    }
    
    func multiply(_ numbers: [Int]) ->Int {
        return numbers.reduce(1, {x, y in return x * y})
    }
    
    func count(_ numbers: [Int]) -> Int {
        return numbers.count
    }
    
    func avg(_ numbers: [Int]) -> Int {
        let total = numbers.reduce(0, {x, y in return x + y})
        return total/numbers.count
    }
    
    func mathOp(args: [Int], beg: Int, op: (Int, Int)->Int ) -> Int {
        return args.reduce(beg, {x, y in return op(x, y) })
    }
    
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return ((lhs[0] + rhs[0]), (lhs[1] + rhs[1]))
    }
}
