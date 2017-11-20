// Artigo: [Swift] Como evitar memory leak

import Foundation

class Master {
    var name: String
    var date: Date
    lazy var start: () -> String = {
        "\(self.name) começou o jogo às \(self.date)"
    }
    
    init(_ name: String, _ date: Date = Date()) {
        self.name = name
        self.date = date
        print("INIT Novo Mestre: \(self.name)")
    }
    
    deinit {
        print("DEINIT Mestre Saiu: \(self.name) às \(self.date.addingTimeInterval(18000))")
    }
}

let startTime: () -> String

do {
    let theMaster = Master("Arthur", Date())
    startTime = theMaster.start
    print(startTime())
}

// Extra: Se alguém chegar atrasado, ele vai querer saber se o jogo ainda existe
// print(startTime())

