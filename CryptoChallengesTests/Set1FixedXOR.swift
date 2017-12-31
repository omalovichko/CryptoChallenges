//
//  Set1FixedXOR.swift
//  CryptoChallengesTests
//
//  Created by Oleksandr Malovichko on 12/25/17.
//  Copyright © 2017 Oleksandr Malovichko. All rights reserved.
//

import XCTest

/*
Fixed XOR
Write a function that takes two equal-length buffers and produces their XOR combination.

If your function works properly, then when you feed it the string:

1c0111001f010100061a024b53535009181c
... after hex decoding, and when XOR'd against:

686974207468652062756c6c277320657965
... should produce:

746865206b696420646f6e277420706c6179
*/

class Set1FixedXOR: XCTestCase {

    func fixedXOR(_ inputA: String,_ inputB: String) -> Array<UInt8> {
        let inputAData = Array<UInt8>(hex: inputA)
        let inputBData = Array<UInt8>(hex: inputB)
        return inputAData.enumerated().map{ $0.element ^ inputBData[$0.offset] }
    }
    
    func testChallenge() {
        let inputA = "1c0111001f010100061a024b53535009181c"
        let inputB = "686974207468652062756c6c277320657965"
        XCTAssertEqual(fixedXOR(inputA, inputB).toHexString(), "746865206b696420646f6e277420706c6179")
    }
    
}
