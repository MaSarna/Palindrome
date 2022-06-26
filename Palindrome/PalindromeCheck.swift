//
//  PalindromeCheck.swift
//  Palindrome
//
//  Created by MaSarna on 26/06/2022.
//

import Foundation

class PalindromeCheck {
    
    func isPalindrom(_ phrase: String) -> Bool {
        let phraseCheck = phrase.lowercased().components(separatedBy: CharacterSet.alphanumerics.inverted).joined()
        
        if phrase == "" {
            return false
        }
        
        return phraseCheck == String(phraseCheck.reversed())
    }
}
