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
    public static var ECHOKE: LocalFlags { return self(UInt(Darwin.ECHOKE)) }

    /// visually erase chars
    public static var ECHOE: LocalFlags { return self(UInt(Darwin.ECHOE)) }

    /// echo NL after line kill
    public static var ECHOK: LocalFlags { return self(UInt(Darwin.ECHOK)) }

    /// enable echoing
    public static var ECHO: LocalFlags { return self(UInt(Darwin.ECHO)) }

    /// echo NL even if ECHO is off
    public static var ECHONL: LocalFlags { return self(UInt(Darwin.ECHONL)) }

    /// visual erase mode for hardcopy
    public static var ECHOPRT: LocalFlags { return self(UInt(Darwin.ECHOPRT)) }

    /// echo control chars as ^(Char)
    public static var ECHOCTL: LocalFlags { return self(UInt(Darwin.ECHOCTL)) }

    /// enable signals INTR, QUIT, [D]SUSP
    public static var ISIG: LocalFlags { return self(UInt(Darwin.ISIG)) }

    /// canonicalize input lines
    public static var ICANON: LocalFlags { return self(UInt(Darwin.ICANON)) }

    /// use alternate WERASE algorithm
    public static var ALTWERASE: LocalFlags { return self(UInt(Darwin.ALTWERASE)) }

    /// enable DISCARD and LNEXT
    public static var IEXTEN: LocalFlags { return self(UInt(Darwin.IEXTEN)) }

    /// external processing
    public static var EXTPROC: LocalFlags { return self(UInt(Darwin.EXTPROC)) }

    /// stop background jobs from output
    public static var TOSTOP: LocalFlags { return self(UInt(Darwin.TOSTOP)) }

    /// output being flushed (state)
    public static var FLUSHO: LocalFlags { return self(UInt(Darwin.FLUSHO)) }

    /// no kernel output from VSTATUS
    public static var NOKERNINFO: LocalFlags { return self(UInt(Darwin.NOKERNINFO)) }
    
    /// XXX retype pending input (state)
    public static var PENDIN: LocalFlags { return self(UInt(Darwin.PENDIN)) }
    
    // TODO Need to switch to UInt
    //public static var NOFLSH:     UInt32 { get } /* don't flush after interrupt */
}

