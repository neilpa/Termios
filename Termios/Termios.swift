//
//  Termios.swift
//  Termios
//
//  Created by Neil Pankey on 3/20/15.
//  Copyright (c) 2015 Neil Pankey. All rights reserved.
//

import Darwin.POSIX.termios

/// Swift wrapper around the raw C `termios` structure.
public struct Termios {

    /// Creates a wrapper around `stdout`.
    public init() {
        self.init(fd: STDOUT_FILENO)
    }

    /// Creates a wrapper around the given file descriptor.
    public init(fd: Int32) {
        self.fd = fd
        tcgetattr(fd, &termios)
    }

    /// The wrapped termios struct.
    private var termios = Darwin.termios()

    /// The corresponding file descriptor.
    private let fd: Int32

}
