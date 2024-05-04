// The Swift Programming Language
// https://docs.swift.org/swift-book

@_exported import MyLib

func main() {
    let z = myLibAdd(2, 3)

    print("2+3 better equal: \(z)")

    ///////////

    let provider = NetworkProvider()
    let controller = DataController(provider)
    let result = controller.doLookup()

    print("Look up returned: \(result)")

    ///////////

    let nm = NetworkManager()
    let result1 = nm.someFunctionThatTakesAClosure(closure: theClosure)

    print("Look up returned: \(result1)")
}

main()
