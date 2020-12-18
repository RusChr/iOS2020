import UIKit

//for i in 0..<10 {
//    print(i)
//}
//
//for i in 0...100 where i % 9 == 0 {
//    print(i)
//}



//var arr: [Any] = [1, "2", NSObject()]
//arr.append(false)
//
//
//var dict = [
//    "1": "one"
//]
//dict["key2"] = "key two"
//
//
//var setValue = Set<Int>()
//setValue.insert(1)
//setValue.insert(3)
//setValue.insert(5)
//setValue.insert(1)
//
//setValue
//
//
//var counter = 0
//
//while counter < 20 {
//    counter += 1
//    if counter % 2 == 0 {
//        continue
//    }
//    print("counter=\(counter)")
//
//}



//func doSomething() {
//    print("meow meow")
//}
//
//var closure: () -> Void = {}
//
//typealias VoidClosure = () -> Void
//
//var closure1: VoidClosure
//var closure2: VoidClosure?
//
//closure2 = doSomething
//closure2?()
//
//
//func doSomething2(str: String) -> String {
//    return str
//}
//
//typealias StringClosure = (String) -> String
//
//var closure3: StringClosure
//closure3 = doSomething2


let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, -58, 510, 1937, -667, 0]

let strings = numbers.map { (number) -> String in
    var num = number
    var output = ""
    repeat {
        if let digitName = digitNames[num % 10] {
            output = digitName + output
            num /= 10
        }
    } while num > 0
    return output
}

print(strings)


var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)

let customerProvider = { customersInLine.remove(at: 0) }
print(customerProvider)         //!!!
print(customersInLine.count)    //!!!

print("Now serving \(customerProvider())")       //!!!
print(customersInLine.count)                     //!!!

func serve(customer customerProvider: () -> String) {
    print("Now serving \(customerProvider())")
}
//serve { () -> String in
//    customersInLine.remove(at: 0)
//}
serve(customer: { customersInLine.remove(at: 0) } )
//serve { customersInLine.remove(at: 0) }
print(customersInLine.count)


func serveAutoclosure(customer customerProvider: @autoclosure () -> String) {
    print("Now serving \(customerProvider())")
}

serveAutoclosure(customer: customersInLine.remove(at: 0))



