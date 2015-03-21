//
//  Termios.swift
//  Termios
//
//  Created by Neil Pankey on 3/20/15.
//  Copyright (c) 2015 Neil Pankey. All rights reserved.
//

import Darwin.POSIX.termios

public final class Termios {
    private var original = termios()
    private var raw = termios()

    init () {
        tcgetattr(STDIN_FILENO, &original)
        cfmakeraw(&raw)
        tcsetattr(STDIN_FILENO, TCSANOW, &raw)
    }

    deinit {
        tcsetattr(STDIN_FILENO, TCSANOW, &original)
    }
}
