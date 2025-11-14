//
//  705> Design HashSet.swift
//  
//
//  Created by Roger Navarro Claros on 8/26/25.
//

//Design a HashSet without using any built-in hash table libraries.
//
//Implement MyHashSet class:

//void add(key) Inserts the value key into the HashSet.
//bool contains(key) Returns whether the value key exists in the HashSet or not.
//void remove(key) Removes the value key in the HashSet. If key does not exist in the HashSet, do nothing.
public class Problem_705: Runner {
    
    class MyHashSet {
        var mySet: Set<Int>
                
        init() {
            self.mySet = Set()
        }
        
        func add(_ key: Int) {
            mySet.insert(key)
        }
        
        func remove(_ key: Int) {
            mySet.remove(key)
            
        }
        
        func contains(_ key: Int) -> Bool {
            mySet.contains(key)
        }
    }
    
    public func runCode() {
        let myHashSet = MyHashSet();
        myHashSet.add(1);
        print(myHashSet.mySet == [1] ? "Passed" : "Failed")      // set = [1]
        myHashSet.add(2);
        print(myHashSet.mySet == [1, 2] ? "Passed" : "Failed")      // set = [1, 2]
        print(myHashSet.contains(1) == true ? "Passed" : "Failed") // return True
        print(myHashSet.contains(3) == false ? "Passed" : "Failed") // return False, (not found)
        myHashSet.add(2);
        print(myHashSet.mySet == [1, 2] ? "Passed" : "Failed")      // set = [1, 2]
        print(myHashSet.contains(2) == true ? "Passed" : "Failed") // return True
        myHashSet.remove(2)
        print(myHashSet.mySet == [1] ? "Passed" : "Failed")   // set = [1]
        
        print(myHashSet.contains(2) == false ? "Passed" : "Failed")// return False, (already removed)
    }
}
