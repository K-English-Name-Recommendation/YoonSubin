//
//  MockManager.swift
//  E-NAME
//
//  Created by subinyoon on 2022/06/14.
//

import Foundation

final class MockManager {
    // service code
    static let shared = MockManager()
    private init() {}
}

extension MockManager {
    func getTodoMock() -> [Data] {
        return MockParser.load([Data].self, from: "Data")!
    }
}
