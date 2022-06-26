//
//  PalindromeTests.swift
//  PalindromeTests
//
//  Created by Jelon on 26/06/2022.
//

import XCTest
@testable import Palindrome

class PalindromeTests: XCTestCase {
    
    var sut: PalindromeCheck!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = PalindromeCheck()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }

    func testPalindromeCheckIsCaseInsensitive() {
        let phrase = "RaCEcAR"
        
        let check = sut.isPalindrom(phrase)
        
        XCTAssertTrue(check)
    }
    
    func testPalindromeCheckIgnoresPunctuations() {
        let phrase = "Doc, note: I dissent. A fast never prevents a fatness. I diet on cod"
        
        let check = sut.isPalindrom(phrase)
        
        XCTAssertTrue(check)
    }
    
    func testPalindromeCheckHandleEmptyString() {
        let phrase = ""
        
        let check = sut.isPalindrom(phrase)
        
        XCTAssertFalse(check)
    }
    
    func testPalindromeCheckSingleCharacter() {
        let phrase = "a"
        
        let check = sut.isPalindrom(phrase)
        
        XCTAssertTrue(check)
    }
    
    func testPalindromeCheckTwoCharsPalindrome() {
        let phrase = "aa"
        
        let check = sut.isPalindrom(phrase)
        
        XCTAssertTrue(check)
    }
    
    func testPalindromeCheckTwoDifferentChars() {
        let phrase = "ab"
        
        let check = sut.isPalindrom(phrase)
        
        XCTAssertFalse(check)
    }
}
