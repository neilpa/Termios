//
//  InputFlags.swift
//  Termios
//
//  Created by Neil Pankey on 3/20/15.
//  Copyright (c) 2015 Neil Pankey. All rights reserved.
//

import Darwin.POSIX.termios

/// Input flag values in a `termios` structure.
public struct InputFlags : RawOptionSetType {
    private var value: UInt = 0

    public init(_ value: UInt) {
        self.value = value
    }

    public init(rawValue value: UInt) {
        self.value = value
    }

    public init(nilLiteral: ()) {
        self.value = 0
    }

    public var rawValue: UInt {
        return value
    }

    public static var allZeros: InputFlags {
        return self(0)
    }
}
