
class Player{
    var str = "Hello, playground"
    var name:String
    var score:Int
    
    func description() -> String {
        return "Player \(name) have \(score) points !"
    }
    
    init(){
        self.name = "John Doy"
        self.score = 10
    }
    
    init(theName:String){
        self.name = theName
        self.score = 26
    }
}

var me = Player()
print(me.description())
me = Player(theName: "Melissa")
print(me.description())

class BestPlayer:Player{
    var useLevel:String
    
    override init(theName:String) {
        useLevel = "Gold"
        super.init(theName:theName)
    }
    
    override func description() -> String {
        var originalMessage = super.description()
        originalMessage.dropLast()
        originalMessage.remove(at: originalMessage.index(before: originalMessage.endIndex))
        originalMessage.remove(at: originalMessage.index(before: originalMessage.endIndex))
        return "\(originalMessage) and have the level \(useLevel)"
    }
    
    func calculateBonus(){
        self.score += 1000
        "the new score is \(self.score) points !"
    }
}

var newPlayer = BestPlayer(theName: "Sarah")
print(newPlayer.description())
newPlayer.calculateBonus()
print(newPlayer.description())
