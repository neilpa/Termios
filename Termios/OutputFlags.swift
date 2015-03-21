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

    public static var allZeros: OutputFlags {
        return self(0)
    }

    /// enable following output processing
    public static var OPOST: OutputFlags { return self(UInt(Darwin.OPOST)) }

    /// map NL to CR-NL (ala CRMOD)
    public static var ONLCR: OutputFlags { return self(UInt(Darwin.ONLCR)) }

    /// expand tabs to spaces
    public static var OXTABS: OutputFlags { return self(UInt(Darwin.OXTABS)) }

    /// discard EOT's (^D) on output)
    public static var ONOEOT: OutputFlags { return self(UInt(Darwin.ONOEOT)) }

    // TODO Should these be included?
    //
    // The following block of features is unimplemented.  Use of these flags in
    // programs will currently result in unexpected behaviour.
    //
    // - Begin unimplemented features
    //
    // var OCRNL: Int32 { get } /* map CR to NL on output */
    // var ONOCR: Int32 { get } /* no CR output at column 0 */
    // var ONLRET: Int32 { get } /* NL performs CR function */
    // var OFILL: Int32 { get } /* use fill characters for delay */
    // var NLDLY: Int32 { get } /* \n delay */
    // var TABDLY: Int32 { get } /* horizontal tab delay */
    // var CRDLY: Int32 { get } /* \r delay */
    // var FFDLY: Int32 { get } /* form feed delay */
    // var BSDLY: Int32 { get } /* \b delay */
    // var VTDLY: Int32 { get } /* vertical tab delay */
    // var OFDEL: Int32 { get } /* fill is DEL, else NUL */
}
