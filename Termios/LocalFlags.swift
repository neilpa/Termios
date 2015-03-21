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

    public static var allZeros: LocalFlags {
        return self(0)
    }

    /// visual erase for line kill
    public static let ECHOKE = LocalFlags(UInt(Darwin.ECHOKE))

    /// visually erase chars
    public static let ECHOE = LocalFlags(UInt(Darwin.ECHOE))

    /// echo NL after line kill
    public static let ECHOK = LocalFlags(UInt(Darwin.ECHOK))

    /// enable echoing
    public static let ECHO = LocalFlags(UInt(Darwin.ECHO))

    /// echo NL even if ECHO is off
    public static let ECHONL = LocalFlags(UInt(Darwin.ECHONL))

    /// visual erase mode for hardcopy
    public static let ECHOPRT = LocalFlags(UInt(Darwin.ECHOPRT))

    /// echo control chars as ^(Char)
    public static let ECHOCTL = LocalFlags(UInt(Darwin.ECHOCTL))

    /// enable signals INTR, QUIT, [D]SUSP
    public static let ISIG = LocalFlags(UInt(Darwin.ISIG))

    /// canonicalize input lines
    public static let ICANON = LocalFlags(UInt(Darwin.ICANON))

    /// use alternate WERASE algorithm
    public static let ALTWERASE = LocalFlags(UInt(Darwin.ALTWERASE))

    /// enable DISCARD and LNEXT
    public static let IEXTEN = LocalFlags(UInt(Darwin.IEXTEN))

    /// external processing
    public static let EXTPROC = LocalFlags(UInt(Darwin.EXTPROC))

    /// stop background jobs from output
    public static let TOSTOP = LocalFlags(UInt(Darwin.TOSTOP))

    /// output being flushed (state)
    public static let FLUSHO = LocalFlags(UInt(Darwin.FLUSHO))

    /// no kernel output from VSTATUS
    public static let NOKERNINFO = LocalFlags(UInt(Darwin.NOKERNINFO))

    /// XXX retype pending input (state)
    public static let PENDIN = LocalFlags(UInt(Darwin.PENDIN))

    /// don't flush after interrupt
    public static let NOFLSH = LocalFlags(UInt(Darwin.NOFLSH))
}
