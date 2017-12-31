//
//  Set1HexToBase64.swift
//  CryptoChallengesTests
//
//  Created by Oleksandr Malovichko on 12/25/17.
//  Copyright © 2017 Oleksandr Malovichko. All rights reserved.
//

import XCTest
import CryptoSwift

/*
Convert hex to base64
The string:

49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d
Should produce:

SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t
So go ahead and make that happen. You'll need to use this code for the rest of the exercises.

Cryptopals Rule
Always operate on raw bytes, never on encoded strings. Only use hex and base64 for pretty-printing.
*/

class Set1HexToBase64: XCTestCase {

    func testChallenge() {
        let hexString = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"
        XCTAssertEqual(hexString.hexToBase64(), "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t")
    }
}
