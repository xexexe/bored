//: Playground - noun: a place where people can play

import UIKit

//: Access Control
public class SomePublicClass {              //explicitly public class
    public var somePublicProperty = 0       //explicitly public class member
    var someInternalProperty = 0            //implicitly internal class member
    private func somePrivateMethod() {}     //explicitly private class member
}

class SomeInternalClass {                   //implicitly internal class
    var someInternalClass = 0               //implicitly internal class member
    private func somePrivateMethod() {}     //explicitly private class member
}

private class SomePrivateClass {            //explicitly private class
    var somePrivateClass = 0                //implicitly private class member
    func somePrivateMethod () {}            //implicitly private class member
}

public class A {
    private func someMethod() {}
}

internal class B: A {
    override internal func someMethod() {
        super.someMethod()
    }
}