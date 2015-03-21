//
//  Termios.swift
//  Termios
//
//  Created by Neil Pankey on 3/20/15.
//  Copyright (c) 2015 Neil Pankey. All rights reserved.
//

import Darwin.POSIX.termios
import LlamaKit

/// Swift wrapper around the raw C `termios` structure.
public struct Termios {
    // MARK: Constructors

    /// Constructs an empty `Termios` structure.
    public init() {
        self.init(Darwin.termios())
    }

    /// Constructs a `Termios` structure from a given file descriptor `fd`.
    public static func fetch(fd: Int32) -> Result<Termios, errno_t> {
        var termios = Darwin.termios()
        switch(tcgetattr(fd, &termios)) {
            case 0:  return success(Termios(termios))
            default: return failure(errno)
        }
    }

    // MARK: Properties

    /// Input flags
    public var inputFlags: InputFlags {
        get { return InputFlags(termios.c_iflag) }
        set { termios.c_iflag = newValue.rawValue }
    }

    /// Output flags
    public var outputFlags: OutputFlags {
        get { return OutputFlags(termios.c_oflag) }
        set { termios.c_oflag = newValue.rawValue }
    }

    /// Control flags
    public var controlFlags: ControlFlags {
        get { return ControlFlags(termios.c_cflag) }
        set { termios.c_cflag = newValue.rawValue }
    }

    /// Local flags
    public var localFlags: LocalFlags {
        get { return LocalFlags(termios.c_lflag) }
        set { termios.c_lflag = newValue.rawValue }
    }

    // MARK: Operations

    /// Updates the file descriptor's `Termios` structure.
    public mutating func update(fd: Int32) -> Result<(), errno_t> {
        switch tcsetattr(fd, TCSANOW, &termios) {
            case 0: return success(())
            default: return failure(errno)
        }
    }

    // MARK: Private

    /// Wraps the `termios` structure.
    private init(_ termios: Darwin.termios) {
        self.termios = termios
    }

    /// The wrapped termios struct.
    private var termios: Darwin.termios
}
