// experiment 6

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {

    let window = NSWindow()

    func applicationDidFinishLaunching(aNotification : NSNotification) {
        window.setContentSize(NSSize(width: 600, height: 400))

        window.styleMask = NSTitledWindowMask |
                           NSClosableWindowMask |
                           NSMiniaturizableWindowMask |
                           NSResizableWindowMask

        window.opaque = false
        window.center()
        window.title = "Experiment 6"

        // Load and display an image

        let path    = "/Users/julian/Pictures/TerminatorHand.jpg"
        let image   = NSImage(contentsOfFile: path)
        let imgView = NSImageView(frame: NSMakeRect(10, 10, 480, 340))
        imgView.image = image
        window.contentView!.addSubview(imgView)

        window.makeKeyAndOrderFront(window)
        window.level = 1
    }
}

let app = NSApplication.sharedApplication()
let controller = AppDelegate()

app.delegate = controller
app.run()
