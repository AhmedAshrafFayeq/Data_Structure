let perStudentPetCount = [1,2,0,3,2,0,0,0,1,2,2,3,4,0,0,1]
let nmberOfStudnets = perStudentPetCount.count
var totalNumberPets = 0

for index in perStudentPetCount {
    totalNumberPets += index
}

let averagePets = totalNumberPets / nmberOfStudnets
print(averagePets)


print("-------------------------------------------")

var order = [["Water", "Orange Juice"], ["Steak", "Rice", "Molten Cake"]]
for(_, items) in order.enumerated() {
    for item in items
    {
        print("\(item)")
    }
}


public class Node {
    
    var value: String
    var next: Node?
    weak var previous: Node?
    
    init(value: String) {
      self.value = value
    }
}

public class LinkedList: CustomStringConvertible{
    fileprivate var head: Node?
    private var tail: Node?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node? {
        return head
    }
    
    public var last: Node? {
        return tail
    }
    
    public func append(value: String) {
        let newNode = Node(value: value)
        
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        }
        // empty list
        else {
            head = newNode
        }
        tail = newNode
    }
    
    public func nodeAt(index: Int) -> Node? {
      // 1
      if index >= 0 {
        var node = head
        var i = index
        // 2
        while node != nil {
          if i == 0 { return node }
          i -= 1
          node = node!.next
        }
      }
      // 3
      return nil
    }
    
    public func removeAll() {
      head = nil
      tail = nil
    }
    
    public func remove(node: Node) -> String {
      let prev = node.previous
      let next = node.next

      if let prev = prev {
        prev.next = next // 1
      } else {
        head = next // 2
      }
      next?.previous = prev // 3

      if next == nil {
        tail = prev // 4
      }

      // 5
      node.previous = nil
      node.next = nil

      // 6
      return node.value
    }
    
    public var description: String {
        // 3
        var text = "["
        var node = head
        // 4
        while node != nil {
          text += "\(node!.value)"
          node = node!.next
          if node != nil { text += ", " }
        }
        // 5
        return text + "]"
      }
}

let dogBreeds = LinkedList()
dogBreeds.append(value: "Labrador")
dogBreeds.append(value: "Bulldog")
dogBreeds.append(value: "Beagle")
dogBreeds.append(value: "Husky")

print(dogBreeds)
