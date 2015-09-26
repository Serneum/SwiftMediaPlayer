//
//  MediaApplication.swift
//  SwiftMediaPlayer
//
//  Created by Chris Rees on 9/25/15.
//  Copyright © 2015 Chris Rees. All rights reserved.
//

import Cocoa

class MediaApplication: NSApplication {
    override func sendEvent(event: NSEvent) {
        if (event.type == .SystemDefined && event.subtype.rawValue == 8) {
            let keyCode = ((event.data1 & 0xFFFF0000) >> 16)
            let keyFlags = (event.data1 & 0x0000FFFF)
            // Get the key state. 0xA is KeyDown, OxB is KeyUp
            let keyState = (((keyFlags & 0xFF00) >> 8)) == 0xA
            let keyRepeat = (keyFlags & 0x1)
            mediaKeyEvent(Int32(keyCode), state: keyState, keyRepeat: Bool(keyRepeat))
        }
        
        super.sendEvent(event)
    }
    
    func mediaKeyEvent(key: Int32, state: Bool, keyRepeat: Bool) {
        // Only send events on KeyDown. Without this check, these events will happen twice
        if (state) {
            switch(key) {
            case NX_KEYTYPE_PLAY:
                print("Play")
                break
            case NX_KEYTYPE_FAST:
                print("Next")
                break
            case NX_KEYTYPE_REWIND:
                print("Prev")
                break
            default:
                break
            }
        }
    }
}
