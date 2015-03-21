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

    public static var ECHOKE:     LocalFlags { return self(Darwin.ECHOKE)     } /* visual erase for line kill */
    public static var ECHOE:      LocalFlags { return self(Darwin.ECHOE)      } /* visually erase chars */
    public static var ECHOK:      LocalFlags { return self(Darwin.ECHOK)      } /* echo NL after line kill */
    public static var ECHO:       LocalFlags { return self(Darwin.ECHO)       } /* enable echoing */
    public static var ECHONL:     LocalFlags { return self(Darwin.ECHONL)     } /* echo NL even if ECHO is off */
    public static var ECHOPRT:    LocalFlags { return self(Darwin.ECHOPRT)    } /* visual erase mode for hardcopy */
    public static var ECHOCTL:    LocalFlags { return self(Darwin.ECHOCTL)    } /* echo control chars as ^(Char) */
    public static var ISIG:       LocalFlags { return self(Darwin.ISIG)       } /* enable signals INTR, QUIT, [D]SUSP */
    public static var ICANON:     LocalFlags { return self(Darwin.ICANON)     } /* canonicalize input lines */
    public static var ALTWERASE:  LocalFlags { return self(Darwin.ALTWERASE)  } /* use alternate WERASE algorithm */
    public static var IEXTEN:     LocalFlags { return self(Darwin.IEXTEN)     } /* enable DISCARD and LNEXT */
    public static var EXTPROC:    LocalFlags { return self(Darwin.EXTPROC)    } /* external processing */
    public static var TOSTOP:     LocalFlags { return self(Darwin.TOSTOP)     } /* stop background jobs from output */
    public static var FLUSHO:     LocalFlags { return self(Darwin.FLUSHO)     } /* output being flushed (state) */
    public static var NOKERNINFO: LocalFlags { return self(Darwin.NOKERNINFO) } /* no kernel output from VSTATUS */
    public static var PENDIN:     LocalFlags { return self(Darwin.PENDIN)     } /* XXX retype pending input (state) */
    //public static var NOFLSH:     UInt32 { get } /* don't flush after interrupt */
}

