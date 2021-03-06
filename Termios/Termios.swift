//
//  Termios.swift
//  Termios
//
//  Created by Neil Pankey on 3/20/15.
//  Copyright (c) 2015 Neil Pankey. All rights reserved.
//

import Darwin.POSIX.termios
import ErrNo
import Result

/// Swift wrapper around the raw C `termios` structure.
public struct Termios {
    // MARK: Constructors

    /// Constructs an empty `Termios` structure.
    public init() {
        self.init(termios())
    }

    /// Constructs a `Termios` structure from a given file descriptor `fd`.
    public static func fetch(fd: Int32) -> Result<Termios, ErrNo> {
        var raw = termios()
        return tryMap(tcgetattr(fd, &raw)) { _ in Termios(raw) }
    }

    // MARK: Properties

    /// Input flags
    public var inputFlags: InputFlags {
        get { return InputFlags(raw.c_iflag) }
        set { raw.c_iflag = newValue.rawValue }
    }

    /// Output flags
    public var outputFlags: OutputFlags {
        get { return OutputFlags(raw.c_oflag) }
        set { raw.c_oflag = newValue.rawValue }
    }

    /// Control flags
    public var controlFlags: ControlFlags {
        get { return ControlFlags(raw.c_cflag) }
        set { raw.c_cflag = newValue.rawValue }
    }

    /// Local flags
    public var localFlags: LocalFlags {
        get { return LocalFlags(raw.c_lflag) }
        set { raw.c_lflag = newValue.rawValue }
    }

    /// Input speed
    public var inputSpeed: UInt {
        return raw.c_ispeed
    }

    /// Output speed
    public var outputSpeed: UInt {
        return raw.c_ispeed
    }

    // MARK: Operations

    /// Updates the file descriptor's `Termios` structure.
    public mutating func update(fd: Int32) -> Result<(), ErrNo> {
        return try(tcsetattr(fd, TCSANOW, &raw))
    }

    /// Set the input speed.
    public mutating func setInputSpeed(baud: UInt) -> Result<(), ErrNo> {
        return try(cfsetispeed(&raw, baud))
    }

    /// Set the output speed.
    public mutating func setOutputSpeed(baud: UInt) -> Result<(), ErrNo> {
        return try(cfsetospeed(&raw, baud))
    }

    /// Set both input and output speed.
    public mutating func setSpeed(baud: UInt) -> Result<(), ErrNo> {
        return try(cfsetspeed(&raw, baud))
    }

    // MARK: Private

    /// Wraps the `termios` structure.
    private init(_ termios: Darwin.termios) {
        raw = termios
    }

    /// The wrapped termios struct.
    private var raw: termios
}
