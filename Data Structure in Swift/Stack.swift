// Stack in Swift

class Stack<T> {
    private var array: [T] = []
    
    // O(1)
    func push(_ item: T) {
        array.append(item)
    }
    
    // O(1)
    func pop() -> T? {
        array.popLast()
    }
    
    // O(1)
    func peek() -> T? {
        array.last
    }
    
    // O(1)
    var isEmpty: Bool {
        array.isEmpty
    }
    
    // O(1)
    var count: Int {
        array.count
    }
}
