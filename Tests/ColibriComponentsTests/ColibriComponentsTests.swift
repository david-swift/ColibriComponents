//
//  ColibriComponentsTests.swift
//  ColibriComponents
//
//  Created by david-swift on 24.01.23.
//
// swiftlint:disable no_magic_numbers

import ColibriComponents
import SwiftUI
import XCTest

/// Tests for the ``ColibriComponents``.
final class ColibriComponentsTests: XCTestCase {

    /// An example structure for testing the id subscript used in ``testIDSubscript()``.
    struct Element: Identifiable {

        /// The element's identifier.
        let id: String
        /// A variable for testing the id subscript's setter.
        var variable: Int

    }

    /// A function for testing the array builder used in ``testArrayBuilder()``.
    /// - Parameter strings: The strings.
    /// - Returns: The strings joined.
    func string(@ArrayBuilder<String> strings: () -> [String]) -> String {
        strings().joined()
    }

    /// Test the array builder.
    func testArrayBuilder() throws {
        let bool = true
        let strings = string {
            "Hello, "
            if bool {
                "world!"
            } else {
                "colibri!"
            }
            for number in 0...10 {
                "\nIteration Number \(number)"
            }
        }
        XCTAssertEqual(
            strings,
            """
            Hello, world!
            Iteration Number 0
            Iteration Number 1
            Iteration Number 2
            Iteration Number 3
            Iteration Number 4
            Iteration Number 5
            Iteration Number 6
            Iteration Number 7
            Iteration Number 8
            Iteration Number 9
            Iteration Number 10
            """
        )
    }

    /// Test the safe subscript.
    func testSafeSubscript() {
        var array = ["Hello", "World"]
        XCTAssertEqual(array[safe: 0], "Hello")
        XCTAssertNil(array[safe: 2])
        array[safe: 0] = "Nice"
        XCTAssertEqual(array[safe: 0], "Nice")
    }

    /// Test the id subscript.
    func testIDSubscript() {
        let element: Element = .init(id: "world", variable: 0)
        var array: [Element] = [.init(id: "hello", variable: 1), element]
        XCTAssertEqual(0, array[id: element.id]?.variable)
        array[id: element.id]?.variable = 2
        XCTAssertEqual(2, array[id: element.id]?.variable)
    }

    /// Test the editable bounds.
    func testEditableBounds() {
        var range = 0...10
        range.editableLowerBound = 2
        range.editableUpperBound = 8
        XCTAssertEqual(range, 2...8)

        var range2 = 0..<10
        range2.editableLowerBound = 2
        range2.editableUpperBound = 8
        XCTAssertEqual(range2, 2..<8)
    }

    /// Test the map function.
    func testMap() {
        var value = 10
        value.map(in: 0...5)
        XCTAssertEqual(value, 5)
    }

    /// Test the RGBA color values and encoding and decoding of colors.
    func testRGBA() throws {
        let color = Color(red: 0.5, green: 0.5, blue: 0.5)
        let data = try JSONEncoder().encode(color)
        let decoded = try JSONDecoder().decode(Color.self, from: data)
        XCTAssertEqual(color.blue, decoded.blue)
    }

    /// Test the folder type.
    func testFolder() {
        let folder = Folder("Hello", systemSymbol: .tag) {
            "Hello"
            "World"
        }
        XCTAssertEqual(folder.content, ["Hello", "World"])
    }

}

// swiftlint:enable no_magic_numbers
