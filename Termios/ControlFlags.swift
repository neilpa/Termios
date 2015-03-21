//
//  ControlFlags.swift
//  Termios
//
//  Created by Neil Pankey on 3/20/15.
//  Copyright (c) 2015 Neil Pankey. All rights reserved.
//

import Darwin.POSIX.termios

/// Control flag values in a `termios` structure.
public struct ControlFlags : RawOptionSetType {
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

    public static var allZeros: ControlFlags {
        return self(0)
    }

    /// ignore control flags
    public static let CIGNORE = ControlFlags(UInt(Darwin.CIGNORE))

    /// character size mask
    public static let CSIZE = ControlFlags(UInt(Darwin.CSIZE))

    /// 5 bits (pseudo)
    public static let CS5 = ControlFlags(UInt(Darwin.CS5))

    /// 6 bits
    public static let CS6 = ControlFlags(UInt(Darwin.CS6))

    /// 7 bits
    public static let CS7 = ControlFlags(UInt(Darwin.CS7))

    /// 8 bits
    public static let CS8 = ControlFlags(UInt(Darwin.CS8))

    /// send 2 stop bits
    public static let CSTOPB = ControlFlags(UInt(Darwin.CSTOPB))

    /// enable receiver
    public static let CREAD = ControlFlags(UInt(Darwin.CREAD))

    /// parity enable
    public static let PARENB = ControlFlags(UInt(Darwin.PARENB))

    /// odd parity, else even
    public static let PARODD = ControlFlags(UInt(Darwin.PARODD))

    /// hang up on last close
    public static let HUPCL = ControlFlags(UInt(Darwin.HUPCL))

    /// ignore modem status lines
    public static let CLOCAL = ControlFlags(UInt(Darwin.CLOCAL))

    /// CTS flow control of output
    public static let CCTS_OFLOW = ControlFlags(UInt(Darwin.CCTS_OFLOW))

    /// RTS flow control of input
    public static let CRTS_IFLOW = ControlFlags(UInt(Darwin.CRTS_IFLOW))

    /// DTR flow control of input
    public static let CDTR_IFLOW = ControlFlags(UInt(Darwin.CDTR_IFLOW))

    /// DSR flow control of output
    public static let CDSR_OFLOW = ControlFlags(UInt(Darwin.CDSR_OFLOW))

    /// DCD flow control of output
    public static let CCAR_OFLOW = ControlFlags(UInt(Darwin.CCAR_OFLOW))

    /// old name for `CCAR_OFLOW`
    public static let MDMBUF = ControlFlags(UInt(Darwin.MDMBUF))
}
