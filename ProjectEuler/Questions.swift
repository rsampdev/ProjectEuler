//
//  Questions.swift
//  ProjectEuler
//
//  Created by Rodney Sampson on 9/21/16.
//  Copyright © 2016 Rodney Sampson II. All rights reserved.
//

import Foundation

public func questionOne() -> Int {
    var sum = 0
    
    for number in 1..<1000 {
        if number % 3 == 0 || number % 5 == 0 {
            sum += number
        }
    }
    
    return sum
}

public func questionThree(upperBound: Int) -> Int {
    precondition(upperBound >= 2, "Upperbound should never be less than 2")
    
    var possibilities = Array(2..<upperBound)
    var primeNumbers: [Int] = [];
    var result = 2
    
    while let thisPrime = possibilities.first {
        primeNumbers.append(thisPrime)
        
        possibilities = possibilities.filter { item in
            item % thisPrime != 0
        }
    }
    
    for prime in primeNumbers {
        if upperBound % prime == 0 {
            result = prime
        }
    }
    
    return result
}

public func questionTen(upperBound: Int) -> Int {
    precondition(upperBound >= 2, "Upperbound should never be less than 2")
    
    var possibilities = Array(2..<upperBound)
    var primeNumbers: [Int] = [];
    var sum = 0
    
    while let thisPrime = possibilities.first {
        primeNumbers.append(thisPrime)
        possibilities = possibilities.filter { item in
            item % thisPrime != 0
        }
    }
    
    for number in primeNumbers {
        sum += number
    }
    
    return sum
}

public func questionTwenty() -> Int {
    var result = 1
    
    for number in 1...10 {
        result *= number
    }
    
    return result
}
