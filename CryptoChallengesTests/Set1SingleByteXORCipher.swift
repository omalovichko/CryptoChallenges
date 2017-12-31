//
//  Set1SingleByteXORCipher.swift
//  CryptoChallengesTests
//
//  Created by Oleksandr Malovichko on 12/31/17.
//  Copyright © 2017 Oleksandr Malovichko. All rights reserved.
//

import XCTest
import CryptoSwift

/*
Single-byte XOR cipher
The hex encoded string:

1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736
... has been XOR'd against a single character. Find the key, decrypt the message.

You can do this by hand. But don't: write code to do it for you.

How? Devise some method for "scoring" a piece of English plaintext. Character frequency is a good metric. Evaluate each output and choose the one with the best score.

Achievement Unlocked
You now have our permission to make "ETAOIN SHRDLU" jokes on Twitter.
*/


class Set1SingleByteXORCipher: XCTestCase {

    func testChallenge() {
        let hex = "1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736"
        let data = Array<UInt8>(hex: hex)
        
        // Sort by frequency
        var frequency = Dictionary<UInt8, Int>()
        data.forEach { (dec) in
            if let count = frequency[dec] {
                frequency[dec] = count + 1
            } else {
                frequency[dec] = 1
            }
        }
        let mostPopularOptional = frequency.max {a, b in a.value < b.value}
        guard let mostPopular = mostPopularOptional?.key else {
            return
        }
        
        var results = [String]()
        let commonCharacters = "ETAOIN SHRDLU".lowercased().bytes
        commonCharacters.forEach { (char) in
            let key = mostPopular ^ char
            let decrypted = data.map { Character(Unicode.Scalar($0 ^ key)) }
            results.append(String(decrypted))
        }
        XCTAssert(results.contains("Cooking MC's like a pound of bacon"))
    }
}
