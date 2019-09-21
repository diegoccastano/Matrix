import UIKit

// Reference Types: points to the exact same memory address.
// Everything that inherits from NSObject class is stored as reference type.
class Dog {
    var wasFed = false // mutable
}

let dog = Dog()
let puppy = dog

puppy.wasFed = true // Although its main object is constant, its attribute is mutable

print(puppy.wasFed)
print(dog.wasFed)

// Value Types: points to different memory address.
// There are many value types in Swift as structs, enums and tuples.
struct Cat {
    var wasFed = false
}

var cat = Cat()
var kitty = cat // If variable the kitty was defined with `let`, none of these attributes could be changed, and this piece                 of program could not be compiled.

kitty.wasFed = true

print(cat.wasFed)
print(kitty.wasFed)
