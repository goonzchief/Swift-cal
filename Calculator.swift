import Foundation

class Calculator {

    private var accumulator: Double?

    func clear() {
        accumulator = nil
    }

    func add(number: Double) {
        guard let accumulator = accumulator else {
            accumulator = number
            return
        }
        accumulator += number
    }

    func subtract(number: Double) {
        guard let accumulator = accumulator else {
            accumulator = -number
            return
        }
        accumulator -= number
    }

    func multiply(number: Double) {
        guard let accumulator = accumulator else {
            accumulator = number
            return
        }
        accumulator *= number
    }

    func divide(number: Double) {
        guard let accumulator = accumulator else {
            fatalError("Cannot divide by zero")
        }
        guard number != 0 else {
            fatalError("Cannot divide by zero")
        }
        accumulator /= number
    }

    func displayResult() {
        guard let accumulator = accumulator else {
            print("0")
            return
        }
        print(accumulator)
    }

}

let calculator = Calculator()
calculator.add(number: 2)
calculator.add(number: 3)
calculator.subtract(number: 4)
calculator.multiply(number: 5)
calculator.displayResult()
