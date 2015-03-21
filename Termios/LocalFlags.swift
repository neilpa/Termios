//
//  LocalFlags.swift
//  Termios
//
//  Created by Neil Pankey on 3/20/15.
//  Copyright (c) 2015 Neil Pankey. All rights reserved.
//

import Darwin.POSIX.termios

/// Local flag values in a `termios` structure.
public struct LocalFlags : RawOptionSetType {
    public var rawValue: Int32

    public init(_ value: Int32) {
        rawValue = value
    }

    public init(rawValue value: Int32) {
        rawValue = value
    }

    public init(nilLiteral: ()) {
        rawValue = 0
    }

    public static var allZeros: LocalFlags {
        return self(0)
    }
}
