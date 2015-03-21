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

    public static var allZeros: InputFlags {
        return self(0)
    }

    public static var IGNBRK  : InputFlags { return self(Darwin.IGNBRK)  }
    public static var BRKINT  : InputFlags { return self(Darwin.BRKINT)  }
    public static var IGNPAR  : InputFlags { return self(Darwin.IGNPAR)  }
    public static var PARMRK  : InputFlags { return self(Darwin.PARMRK)  }
    public static var INPCK   : InputFlags { return self(Darwin.INPCK)   }
    public static var ISTRIP  : InputFlags { return self(Darwin.ISTRIP)  }
    public static var INLCR   : InputFlags { return self(Darwin.INLCR)   }
    public static var IGNCR   : InputFlags { return self(Darwin.IGNCR)   }
    public static var ICRNL   : InputFlags { return self(Darwin.ICRNL)   }
    public static var IXON    : InputFlags { return self(Darwin.IXON)    }
    public static var IXOFF   : InputFlags { return self(Darwin.IXOFF)   }
    public static var IXANY   : InputFlags { return self(Darwin.IXANY)   }
    public static var IMAXBEL : InputFlags { return self(Darwin.IMAXBEL) }
    public static var IUTF8   : InputFlags { return self(Darwin.IUTF8)   }
}
