//
//  WorkingWithStringsPractice.swift
//  WordScrambleSwiftUI
//
//  Created by Mitch Andrade on 3/7/22.
//

import SwiftUI

struct WorkingWithStringsPractice: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    func test2() {
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = misspelledRange.location == NSNotFound
    }
    
    func test1() {
        let input = """
a
b
c
"""
        let letters = input.components(separatedBy: "\n")
        let letter = letters.randomElement()
        
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    func test() {
        let input = "a b c"
        let letters = input.components(separatedBy: " ")
    }
}

struct WorkingWithStringsPractice_Previews: PreviewProvider {
    static var previews: some View {
        WorkingWithStringsPractice()
    }
}
