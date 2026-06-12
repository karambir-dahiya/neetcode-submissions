class LRUCache {
    var capacity: Int
    var count = 0
    var dll: DoublyLinkedList
    var cache = [Int:Node]()
    init(_ capacity: Int) {
        self.capacity = capacity
        self.dll = DoublyLinkedList()
    }

    func get(_ key: Int) -> Int {
        guard let node = cache[key] else {
            return -1
        }

        dll.removeFromList(node:node)
        dll.insertAtHead(node:node)
        return node.value

    }

    func put(_ key: Int, _ value: Int) {
        if let node = cache[key] {
            node.value = value
            dll.removeFromList(node:node)
            dll.insertAtHead(node:node)
        } else {
            let node = Node(key,value)
            cache[key] = node
            if count < capacity {
                count += 1
                
            } else {
                if let lastNode = dll.lastNode() {
                    cache[lastNode.key] = nil
                    dll.removeFromList(node:lastNode)
                }
            }
            dll.insertAtHead(node:node)
        }
        

    }
}

class Node {
    var key: Int
    var value: Int
    var prev: Node?
    var next: Node?

    init(_ key: Int, _ value: Int) {
        self.key = key
        self.value = value
    }
}

class DoublyLinkedList {
    var head = Node(0,0)
    var tail = Node(0,0)

    init() {
        head.next = tail
        tail.prev = head
    }

    func insertAtHead(node: Node) {
        node.next = head.next
        head.next?.prev = node
        node.prev = head
        head.next = node
    }

    func removeFromList(node: Node) {
        node.prev?.next = node.next
        node.next?.prev = node.prev
    }

    func lastNode()-> Node? {
        return tail.prev
    }
}
