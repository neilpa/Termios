//
//  OutputFlags.swift
//  Termios
//
//  Created by Neil Pankey on 3/20/15.
//  Copyright (c) 2015 Neil Pankey. All rights reserved.
//

import Darwin.POSIX.termios

/// Output flag values in a `termios` structure.
public struct OutputFlags : RawOptionSetType {
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

    public static var allZeros: OutputFlags {
        return self(0)
    }

    public static var OPOST  : OutputFlags { return self(Darwin.OPOST)  }
    public static var ONLCR  : OutputFlags { return self(Darwin.ONLCR)  }
    public static var OXTABS : OutputFlags { return self(Darwin.OXTABS) }
    public static var ONOEOT : OutputFlags { return self(Darwin.ONOEOT) }
}
