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
    public var rawValue: UInt

    public init(_ value: UInt) {
        rawValue = value
    }

    public init(rawValue value: UInt) {
        rawValue = value
    }

    public init(nilLiteral: ()) {
        rawValue = 0
    }

    public static var allZeros: InputFlags {
        return self(0)
    }

    /// ignore BREAK condition
    public static var IGNBRK: InputFlags { return self(UInt(Darwin.IGNBRK)) }

    /// map BREAK to SIGINTR
    public static var BRKINT: InputFlags { return self(UInt(Darwin.BRKINT)) }

    /// ignore (discard) parity errors
    public static var IGNPAR: InputFlags { return self(UInt(Darwin.IGNPAR)) }

    /// mark parity and framing errors
    public static var PARMRK: InputFlags { return self(UInt(Darwin.PARMRK)) }

    /// enable checking of parity errors
    public static var INPCK: InputFlags { return self(UInt(Darwin.INPCK)) }

    /// strip 8th bit off chars
    public static var ISTRIP: InputFlags { return self(UInt(Darwin.ISTRIP)) }

    /// map NL into CR
    public static var INLCR: InputFlags { return self(UInt(Darwin.INLCR)) }

    /// ignore CR
    public static var IGNCR: InputFlags { return self(UInt(Darwin.IGNCR)) }

    /// map CR to NL (ala CRMOD)
    public static var ICRNL: InputFlags { return self(UInt(Darwin.ICRNL)) }

    /// enable output flow control
    public static var IXON: InputFlags { return self(UInt(Darwin.IXON)) }

    /// enable input flow control
    public static var IXOFF: InputFlags { return self(UInt(Darwin.IXOFF)) }

    /// any char will restart after stop
    public static var IXANY: InputFlags { return self(UInt(Darwin.IXANY)) }

    /// ring bell on input queue full
    public static var IMAXBEL: InputFlags { return self(UInt(Darwin.IMAXBEL)) }
    
    /// maintain state for UTF-8 VERASE 
    public static var IUTF8: InputFlags { return self(UInt(Darwin.IUTF8)) }

}
