
class BankAccount{
    let accountNumber:Int
    let code = 123456
    var balance:Double
    class var intrestRate:Float {
        return 2.0
    }
    
    init(num:Int, balanceInit:Double) {
        self.accountNumber = num
        self.balance = balanceInit
    }
    
    func deposit(balance:Double) {
        self.balance += balance
    }
    
    func transaction(amount:Double) -> Bool {
        if balance > amount {
            balance -= amount
            return true
        }else{
            return false
        }
    }
    
    class func example(){
        "Taux d'interet : \(self.intrestRate)"
    }
    
}

var test = BankAccount(num: 111122315, balanceInit: 1000.0)
BankAccount.example()
BankAccount.intrestRate
