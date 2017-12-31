//
//  Utils.swift
//  CryptoChallengesTests
//
//  Created by Oleksandr Malovichko on 12/31/17.
//  Copyright © 2017 Oleksandr Malovichko. All rights reserved.
//

extension String {
    func hexToBase64() -> String? {
        return Array<UInt8>(hex: self).toBase64()
    }
}
