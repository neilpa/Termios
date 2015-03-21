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
    public static let IGNBRK = InputFlags(UInt(Darwin.IGNBRK))

    /// map BREAK to SIGINTR
    public static let BRKINT = InputFlags(UInt(Darwin.BRKINT))

    /// ignore (discard) parity errors
    public static let IGNPAR = InputFlags(UInt(Darwin.IGNPAR))

    /// mark parity and framing errors
    public static let PARMRK = InputFlags(UInt(Darwin.PARMRK))

    /// enable checking of parity errors
    public static let INPCK = InputFlags(UInt(Darwin.INPCK))

    /// strip 8th bit off chars
    public static let ISTRIP = InputFlags(UInt(Darwin.ISTRIP))

    /// map NL into CR
    public static let INLCR = InputFlags(UInt(Darwin.INLCR))

    /// ignore CR
    public static let IGNCR = InputFlags(UInt(Darwin.IGNCR))

    /// map CR to NL (ala CRMOD)
    public static let ICRNL = InputFlags(UInt(Darwin.ICRNL))

    /// enable output flow control
    public static let IXON = InputFlags(UInt(Darwin.IXON))

    /// enable input flow control
    public static let IXOFF = InputFlags(UInt(Darwin.IXOFF))

    /// any char will restart after stop
    public static let IXANY = InputFlags(UInt(Darwin.IXANY))

    /// ring bell on input queue full
    public static let IMAXBEL = InputFlags(UInt(Darwin.IMAXBEL))

    /// maintain state for UTF-8 VERASE
    public static let IUTF8 = InputFlags(UInt(Darwin.IUTF8))
}
