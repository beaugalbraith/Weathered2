//
//  AppDelegate.swift
//

// Make sure to fill the Storyboard ID to MainVC


/*
 Info.plist
 Application is agent (UIElement) - Boolean - YES
 */

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    let myMenu = NSMenu(title: "Weathered Menu")
    
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        statusItem.button?.title = "--°"
        statusItem.action = #selector(AppDelegate.displayPopup(_:))
        statusItem.sendAction(on: [NSEvent.EventTypeMask.leftMouseUp, NSEvent.EventTypeMask.rightMouseUp])
        
    }
    @objc func close(_ sender: AnyObject?) {
        NSApp.terminate(sender)
    }
    @objc func displayPopup(_ sender: AnyObject?) {
        let event:NSEvent! = NSApp.currentEvent!
        let storyboard = NSStoryboard(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil)
        
        switch event.type.rawValue {
        case NSEvent.EventType.rightMouseUp.rawValue:
            print(event)
            guard let vc = storyboard.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier(rawValue: "QuitVC")) as? NSViewController else {
                NSLog("Unable to instantiate quitVC")
                return
            }
            let popOver = NSPopover()
            popOver.contentViewController = vc
            popOver.behavior = .transient
            popOver.show(relativeTo: statusItem.button!.bounds, of: statusItem.button!, preferredEdge: .minY)
            
        case NSEvent.EventType.leftMouseUp.rawValue:
            print(event)
            guard let vc = storyboard.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier(rawValue: "WeatheredVC")) as? NSViewController else {
                NSLog("Unable to instantiate viewController")
                return
            }
            let popOver = NSPopover()
            popOver.contentViewController = vc
            popOver.behavior = .transient
            popOver.show(relativeTo: statusItem.button!.bounds, of: statusItem.button!, preferredEdge: .minY)
            
        default:
            print(event)
            print("default case reached")
            return
        }
        
    }
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
}

