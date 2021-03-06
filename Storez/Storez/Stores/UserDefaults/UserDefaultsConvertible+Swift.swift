//
//  UserDefaultsConvertible+Swift.swift
//  Storez
//
//  Created by Mazyad Alabduljaleel on 11/18/15.
//  Copyright © 2015 mazy. All rights reserved.
//

import Foundation

/**
    Adding support to Swift types
*/
extension Int: UserDefaultsConvertible {
    
    public static func decode(userDefaultsValue value: NSNumber) -> Int? {
        return value.intValue
    }
    
    public var encodeForUserDefaults: NSNumber? {
        return NSNumber(value: self as Int)
    }
}

extension Double: UserDefaultsConvertible {
    
    public static func decode(userDefaultsValue value: NSNumber) -> Double? {
        return value.doubleValue
    }
    
    public var encodeForUserDefaults: NSNumber? {
        return NSNumber(value: self as Double)
    }
}

extension Bool: UserDefaultsConvertible {
    
    public static func decode(userDefaultsValue value: NSNumber) -> Bool? {
        return value.boolValue
    }
    
    public var encodeForUserDefaults: NSNumber? {
        return NSNumber(value: self as Bool)
    }
}

extension Float: UserDefaultsConvertible {
    
    public static func decode(userDefaultsValue value: NSNumber) -> Float? {
        return value.floatValue
    }
    
    public var encodeForUserDefaults: NSNumber? {
        return NSNumber(value: self as Float)
    }
}

extension String: UserDefaultsConvertible {
        
    public static func decode(userDefaultsValue value: NSString) -> String? {
        return value as String
    }
    
    public var encodeForUserDefaults: NSString? {
        return self as NSString
    }
}

