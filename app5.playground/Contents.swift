
import Foundation

class Personne{
    var firstName:String
    var lastName:String
    
    var fullName:String{
        get{
            return firstName+" "+lastName
        }
        set{
            let array = newValue.components(separatedBy: " ")
            firstName = array.first!
            lastName = array.last!
        }
    }
    
    init(first:String, last:String) {
        self.firstName = first
        self.lastName = last
    }
}

var examplePersonne = Personne(first: "Jean-Laurent", last: "DUZANT")
examplePersonne.firstName
examplePersonne.fullName
examplePersonne.fullName = "Thom Smith"
examplePersonne.fullName

