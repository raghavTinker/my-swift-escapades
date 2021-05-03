//Error Handling
//Syntax:
/*
    do{
        //Create audio player object
        audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
    }
    
    catch{
        //Didnt work
 
        print("Couldnt create for file")
    }
 */

//if try was used like try? then the error wont be thrown rather the variable audioPlayer will be nil

//try! will forcibly store the stuff in the variable even if its nill but now auto throwing


//Creating your own Swift error type
import Darwin

enum BankAccount: Error{
    case insufficientFunds
    case invalidTransaction
    case duplicateTransaction
    case unkown
}

var funds: Int = 0
func withDrawCash(amount: Int)throws{
    if (funds - amount < 0){
        throw BankAccount.insufficientFunds
    }
    else{
        funds -= amount
    }
}

do{
    try withDrawCash(amount: 100)
}

catch BankAccount.insufficientFunds{
    print("Insufficient funds")
}

catch{
    print("Unexpected error!")
}

//Guard statements
func sqrt(number: Int) -> Int?{
    guard number >= 0 else{
        return nil
    }
    
    return Int(pow(Double(number), 1/2))
}
