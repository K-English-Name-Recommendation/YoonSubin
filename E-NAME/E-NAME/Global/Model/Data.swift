//
//  Data.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/14.
//

import Foundation

struct Data: Codable {
    let name: String
    let gender: Int
    let mean: String
    let EI, SN, TF, JP: Int
    let color: Int
    let christianity: Bool
}
