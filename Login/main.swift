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
    let userLimit:Int = 100
    var userList:[String]?
    var userCurrentAmount = 0
    let wordAmount: (String, Int)?
    let adminAccount:String = "Elicruze390!"
    
    init () {
        //Look up more about init
        userList = nil
        wordAmount = nil
    }

    
    func addAmountAccounts () {
        userCurrentAmount += 1
    }
    
    func newUserAccount (name:String, pass:String) {
        self.name = name
        self.pass = pass
    }
    
}

let makeUser = userLogin()

var userName:String
var userPass:String

print ("🔒Please make a username.")
userName = readLine()!
print ("🔒Please make a password.")
userPass = readLine()!

makeUser.newUserAccount(name: userName, pass: userPass)
print (makeUser.name, makeUser.pass)
