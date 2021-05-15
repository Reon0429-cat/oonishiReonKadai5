//
//  Calculator.swift
//  oonishiReonKadai5
//
//  Created by 大西玲音 on 2021/04/17.
//

import Foundation

class Calculator {
    enum CalculatorError: Error {
        case numberToDivideIsZero
    }
    func divide(numberToBeDivideNum: Double, numberToDivideNum: Double) -> Result<Double, CalculatorError> {
        guard !numberToDivideNum.isZero else {
            return .failure(.numberToDivideIsZero)
        }
        return .success(numberToBeDivideNum / numberToDivideNum)
    }
}
