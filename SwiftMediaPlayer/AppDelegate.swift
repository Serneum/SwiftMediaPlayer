//
//  AppDelegate.swift
//  SwiftMediaPlayer
//
//  Created by Chris Rees on 9/25/15.
//  Copyright © 2015 Chris Rees. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    @IBOutlet weak var rewind: NSButton!
    @IBOutlet weak var playPause: NSButton!
    @IBOutlet weak var fastForward: NSButton!

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

