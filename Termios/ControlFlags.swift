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

    public static var allZeros: ControlFlags {
        return self(0)
    }

    /// ignore control flags
    public static var CIGNORE: ControlFlags { return self(Darwin.CIGNORE) }

    /// character size mask
    public static var CSIZE: ControlFlags { return self(Darwin.CSIZE) }

    /// 5 bits (pseudo)
    public static var CS5: ControlFlags { return self(Darwin.CS5) }

    /// 6 bits
    public static var CS6: ControlFlags { return self(Darwin.CS6) }

    /// 7 bits
    public static var CS7: ControlFlags { return self(Darwin.CS7) }

    /// 8 bits
    public static var CS8: ControlFlags { return self(Darwin.CS8) }

    /// send 2 stop bits
    public static var CSTOPB: ControlFlags { return self(Darwin.CSTOPB) }

    /// enable receiver
    public static var CREAD: ControlFlags { return self(Darwin.CREAD) }

    /// parity enable
    public static var PARENB: ControlFlags { return self(Darwin.PARENB) }

    /// odd parity, else even
    public static var PARODD: ControlFlags { return self(Darwin.PARODD) }

    /// hang up on last close
    public static var HUPCL: ControlFlags { return self(Darwin.HUPCL) }

    /// ignore modem status lines
    public static var CLOCAL: ControlFlags { return self(Darwin.CLOCAL) }

    /// CTS flow control of output
    public static var CCTS_OFLOW: ControlFlags { return self(Darwin.CCTS_OFLOW) }

    /// RTS flow control of input
    public static var CRTS_IFLOW: ControlFlags { return self(Darwin.CRTS_IFLOW) }

    /// DTR flow control of input
    public static var CDTR_IFLOW: ControlFlags { return self(Darwin.CDTR_IFLOW) }

    /// DSR flow control of output
    public static var CDSR_OFLOW: ControlFlags { return self(Darwin.CDSR_OFLOW) }

    /// DCD flow control of output
    public static var CCAR_OFLOW: ControlFlags { return self(Darwin.CCAR_OFLOW) }
    
    /// old name for `CCAR_OFLOW`
    public static var MDMBUF: ControlFlags { return self(Darwin.MDMBUF) }
}
