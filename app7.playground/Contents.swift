import Foundation

func getDailyDonus() -> Double {
    return NSDate().timeIntervalSince1970
}

class Player {
    var name:String = "John Doe"
    var score = 0
    lazy var bonus = getDailyDonus()
    
    func description() -> String {
        return "\(NSDate().timeIntervalSince1970) - Le joueur \(name) a un score de \(score)"
    }
}

var newPlayer = Player()
newPlayer.description()
newPlayer.bonus

