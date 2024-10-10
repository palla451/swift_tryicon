import Cocoa

// Crea l'oggetto Application
let app = NSApplication.shared
app.setActivationPolicy(.accessory)

// Crea l'oggetto StatusItem (la tray icon)
let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)


if let button = statusItem.button {
    // Utilizza Bundle.module per caricare la risorsa
    if let imagePath = Bundle.module.path(forResource: "trayIcon", ofType: "png"),
       let image = NSImage(contentsOfFile: imagePath) {
        image.isTemplate = true // Indica a macOS di adattare l'immagine ai temi chiaro/scuro
        button.image = image
        print("Tray icon image loaded successfully")
    } else {
        print("Failed to load tray icon image")
    }
}




// Crea un menu che verrà mostrato cliccando sulla tray icon
let menu = NSMenu()

// Aggiungi un'azione al menu
menu.addItem(NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))

// Assegna il menu alla tray icon
statusItem.menu = menu

// Avvia l'applicazione
app.run()
