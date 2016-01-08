// experiment 5

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    var text = NSTextView(frame: NSMakeRect(20, 150, 180, 30))
    let window = NSWindow()

    func applicationDidFinishLaunching(aNotification : NSNotification) {
        window.setContentSize(NSSize(width: 600, height: 300))

        window.styleMask = NSTitledWindowMask |
                           NSClosableWindowMask |
                           NSMiniaturizableWindowMask |
                           NSResizableWindowMask

        window.opaque = false
        window.center()
        window.title = "Experiment 5"

        let button = NSButton(frame: NSMakeRect(20, 100, 280, 30))

        button.bezelStyle = .ThickSquareBezelStyle
        button.title = "Click me to change the text"
        button.target = self
        button.action = "action:"
        window.contentView!.addSubview(button)

        text.string = "Text View"
        text.editable = false
        text.backgroundColor = window.backgroundColor
        text.selectable = false
        window.contentView!.addSubview(text)

        window.makeKeyAndOrderFront(window)
        window.level = 1
    }

    func action(sender: AnyObject) {
        text.string = "The button has been pressed"
    }
}

let app = NSApplication.sharedApplication()
let controller = AppDelegate()

app.delegate = controller
app.run()
