//
//  main.swift
//  Login
//
//  Created by Sabrina Elizondo on 11/17/22.
//

import Foundation



class userLogin {
    
    var name:String?
    var pass:String?
    let userNameLimit:Int = 8
    let userPassLimit:Int = 10
    var userList:[String]
    var userCurrentAmount = 0
    let wordAmount: (String, Int)?
    let adminAccount:String = "Admin: Elicruze"
    
    init () {
        //Look up more about init
        wordAmount = nil
        userList = [adminAccount]
    }

    
    func addAmountAccounts () {
        userCurrentAmount += 1
    }
    
    func coverPassword () {
    }
    
    func newUserAccount (name:String, pass:String) {
        var coverPass = ""
        if name.count <= userNameLimit || pass.count >= userPassLimit {
            self.name = name
            self.pass = pass
            userList.append(self.name!)
            for _ in self.pass! {
                coverPass.append("*")
            }
            print ("\n☑️UserName...\(self.name!)\n☑️Password...\(coverPass).")
        }
        else if name.count > userNameLimit {print ("The username exceeds the amount you can use. Please check and re-type.")
            repeat { print("The name you chose was did not met critia. Please try another.")
                 self.name = readLine()!
            } while self.name!.count >= userNameLimit
            self.name = name
            userList.append(self.name!)
            self.pass = pass
        }
        else if pass.count > userPassLimit {print ("The password exceeds the amount you can use. Please check and re-type.")
            repeat { print("The pass you chose was did not met critia. Please try another.")
                 self.pass = readLine()!
            } while self.pass!.count >= userNameLimit
            self.pass = pass
            self.name = name
            userList.append(self.name!)
        }
        else {print("Something went wrong")}
        addAmountAccounts()
    }
    
}

let makeUser = userLogin()

var userName:String
var userPass:String

print ("Usernames must be: \(makeUser.userNameLimit) characters long. Passwords must be \(makeUser.userPassLimit) characters long.")

print ("\n🔒Please make a username.")
userName = readLine()!
print ("🔒Please make a password.")
userPass = readLine()!

makeUser.newUserAccount(name: userName, pass: userPass)
print ("\nYour username is \(makeUser.name!), and your password is \(makeUser.pass!)")
print ("\n📲Current user list...\(makeUser.userList)")

