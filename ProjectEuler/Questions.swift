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
    
    for number in 0..<1000 {
        if number % 3 == 0 || number % 5 == 0 {
            sum += number
        }
    }
    
    return sum
}
