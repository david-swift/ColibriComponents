//
//  Array.swift
//  ColibriComponents
//
//  Created by david-swift on 19.01.23.
//

import SwiftUI

extension Array: Bindable {

    /// Accesses the element at the specified position safely.
    /// - Parameters:
    ///   - index: The position of the element to access.
    ///
    ///   Access and set elements the safe way:
    ///   ```swift
    ///   var array = ["Hello", "World"]
    ///   print(array[safe: 2] ?? "Out of range")
    ///   ```
    public subscript(safe index: Int?) -> Element? {
        get {
            if let index, checkIndex(index) {
                return self[index]
            }
            return nil
        }
        set {
            if let index, let value = newValue, checkIndex(index) {
                self[index] = value
            }
        }
    }

    /// Check if a given index is valid for the array.
    /// - Parameter index: The index to test.
    /// - Returns: Return whether the index is valid or not.
    private func checkIndex(_ index: Int) -> Bool {
        index < count && index >= 0
    }

}

extension Array where Element: Identifiable {

    /// Accesses the element with a specified identifier safely.
    /// - Parameters:
    ///     - id: The identifier of the element to access.
    public subscript(id id: Element.ID?) -> Element? {
        get {
            let index = getIndex(id: id)
            return self[safe: index]
        }
        set {
            let index = getIndex(id: id)
            self[safe: index] = newValue
        }
    }

    /// Get the index of an element with a specified identifier.
    /// - Parameter id: The element's identifier.
    /// - Returns: The index of the element.
    private func getIndex(id: Element.ID?) -> Int? {
        firstIndex { $0.id == id }
    }

}

extension Array: View where Element == ToolbarGroup {

    /// The toolbar.
    public var body: some View {
        HStack {
            ForEach(self) { $0 }
        }
        .padding(.customToolbarPadding)
        .frame(height: .customToolbarHeight)
        .offset(y: .customToolbarOffsetCorrection)
    }

}

/// The previews for an array with ``ToolbarGroup`` as the element type.
struct Array_Previews: PreviewProvider, View {

    /// The previews.
    static var previews: some View {
        Self()
    }

    /// The toolbar groups.
    @ArrayBuilder<ToolbarGroup> var toolbar: [ToolbarGroup] {
        ToolbarGroup {
            ToolbarMenu(.init(), systemSymbol: .plus) {
                Button("+1") {
                    testCount += 1
                }
                Button("+5") {
                    let five = 5
                    testCount += five
                }
                Button("+10") {
                    let ten = 10
                    testCount += ten
                }
            }
            ToolbarAction(.init(), systemSymbol: .minus) {
                testCount -= 1
            }
        }
        .spacer()
        ToolbarGroup {
            let maximum = 50.0
            ProgressView(value: Double(testCount) / maximum)
                .padding()
        }
        .spacer()
        ToolbarGroup {
            ToolbarAction(.init(), systemSymbol: .restart) {
                testCount = 0
            }
        }
        ToolbarGroup {
            ToolbarAction(.init(), systemSymbol: .circle) {
                if testCount == 0 {
                    testCount = 1
                } else {
                    testCount = 0
                }
            }
            .isOn(testCount == 0)
        }
    }

    /// A variable for testing purposes.
    @State private var testCount = 0

    /// The view's body.
    var body: some View {
        VStack {
            Text("\(testCount)")
            Divider()
            toolbar
        }
        .padding()
    }

}
