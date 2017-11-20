// Artigo: [Swift] Como evitar memory leak

import Foundation

class Table {
    var system: String
        
    init(_ system: String) {
        self.system = system
        print("INIT Nova Mesa de: \(system)")
    }
    
    deinit {
        print("DEINIT Mesa de: \(system) Finalizada!")
    }
}

do {
    let tableOnline = Table("D&D")
}

