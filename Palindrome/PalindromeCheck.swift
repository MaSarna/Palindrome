//
//  PalindromeCheck.swift
//  Palindrome
//
//  Created by Jelon on 26/06/2022.
//

import Foundation

class PalindromeCheck {
    
    func isPalindrom(_ phrase: String) -> Bool {
        let phraseCheck = phrase.components(separatedBy: CharacterSet.alphanumerics.inverted).joined().lowercased()
        
        return phraseCheck == String(phraseCheck.reversed())
    }
}
