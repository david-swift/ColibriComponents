<p align="center">
  <img width="256" alt="ColibriComponents Icon" src="Icons/ColibriComponentsIcon.png">
  <h1 align="center">ColibriComponents</h1>
</p>

<p align="center">
  <a href="https://github.com/david-swift/ColibriComponents-macOS">
  GitHub
  </a>
  ·
  <a href="Documentation/Reference/ColibriComponents/README.md">
  Contributor Docs
  </a>
</p>

_ColibriComponents_ contains some components I often use in my packages and apps. There are views and other code fragments.

## Table of Contents

- [Elements][1]
- [Installation][2]
- [Usage][3]
- [Thanks][4]

## Elements

| Name                                    | Description                                                                                                                                                                               |
| --------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Toolbar                                 | A toolbar for inside a window, supporting grouped buttons and toggles.                                                                                                                    |
| Freeform Toolbar                        | A toolbar for inside a window that floats over another view.                                                                                                                              |
| Optional Picker                         | A picker with the option to not choose any of the values presented by the picker by pressing on the selected option. It is mainly used in the window toolbar.                             |
| Selection Item Picker                   | A picker for elements conforming to `SelectionItem`.                                                                                                                                      |
| Undo Provider                           | A function for providing undo and redo functionality in a macOS app.                                                                                                                      |
| Array builder                           | A result builder for building any array. It supports `if`, `else` and `switch` statements as well as `for..in` loops.                                                                     |
| Folder                                  | A type for grouping any other type. The folder has an identifier, a title, an icon, and content.                                                                                          |
| Easier to use `LocalizedStringResource` | Simplify the initialization of SwiftUI views and other initializers using `StringProtocol` for `LocalizedStringResource`.                                                                 |
| Predefined buttons                      | Functions for creating cancel buttons, default buttons such as add buttons and confirmation buttons, and delete buttons.                                                                  |
| Color RGBA                              | Get the RGBA values for a color directly. This enables encoding and decoding of colors.                                                                                                   |
| Safe subscript                          | Access elements of an array safely. If an index is out of range, it returns `nil`, else, it returns the element at the index. It is also possible to set new values using this subscript. |
| ID subscript                            | Access identifiable elements in an array safely with the identifier.                                                                                                                      |
| Editable bounds                         | The upper and lower bound of a `ClosedRange` and `Range` but with a safe setter.                                                                                                          |
| Map value in range                      | A function for comparable types that maps the value in a certain `ClosedRange` or `Range`.                                                                                                |
| Bindable                                | Adds a method for defining a setter for getting a `Binding`.Many of the standard types conform to `Bindable`.                                                                             |
| Geometry                                | A view modifier for observing the geometry of a view.                                                                                                                                     |

## Installation

### Swift Package
1. Open your Swift package in Xcode.
2. Navigate to `File > Add Packages`.
3. Paste this URL into the search field: `https://github.com/david-swift/ColibriComponents-macOS`
4. Click on `Copy Dependency`.
5. Navigate to the `Package.swift` file.
6. In the `Package` initializer, under `dependencies`, paste the dependency into the array.

###  Xcode Project
1. Open your Xcode project in Xcode.
2. Navigate to `File > Add Packages`.
3. Paste this URL into the search field: `https://github.com/david-swift/ColibriComponents-macOS`
4. Click on `Add Package`.

## Usage

### Array Builder
Define any array using DSL. 

```swift
func string(@ArrayBuilder<String> strings: () -> [String]) -> String {
    strings().joined()
}

string {
    "Hello, "
    if bool {
        "world!"
    } else {
        "colibri!"
    }
    for x in 0...10 {
        "\nIteration Number \(x)"
    }
}

```

### Bindable
Create a `Binding` by adding a setter to a value.

```swift
TextField(
    "Test",
    text: text.binding { newValue in
        print(newValue)
        text = newValue
    }
)
```

### Color RGBA
Get the RGBA values of a color. `Color` conforms to `Codable`.

```swift
let color = Color(red: 0.5, green: 0.5, blue: 0.5)
print(color.blue)
```

### Easier to Use `LocalizedStringResource`
Initialize SwiftUI components using `LocalizedStringResource`.  

```swift
Button(.init("Hello", comment: "A localized string resource!")) { }
```

### Editable Bounds
Edit the bounds of a `ClosedRange` or `Range`.

```swift
var range = 0...10
range.editableLowerBound = 2
range.editableUpperBound = 8
```

### Folder
Group multiple elements and provide a folder title, icon, and identifier.

```swift
Folder("Hello", systemSymbol: .tag) {
    "Hello"
    "World"
}
```

### Freeform Toolbar
A custom toolbar that floats over another view.

```swift
Text("Hello, world!")
    .freeformToolbar(visibility: visibility, y: 50) {
        ToolbarAction("Function", symbol: functionSymbol) {
            print("Function!")
        }
    }
```

### Geometry
Get the geometry of a view with this modifier.

```swift
Text("Hello, world!")
    .geometry { geometry in
        size = geometry.size
    }
```

### ID subscript
Access and set identifiable elements of an array by providing the identifier.

```swift
let array: [Element] = [.init(id: "hello"), .init(id: "world)]
print(array[id: "hello"]?.id ?? "error")
```

### Map Value in Range
Change a comparable type so it is in a certain range.

```swift
var value = 10
value.map(in: 0...5)
```

### Optional Picker
A picker with the option to not choose any of the values presented by the picker by pressing on the selected option.
```swift
OptionalPicker("Value", selection: $selection, defaultValue: "Hello") {
    Label("Snow", systemSymbol: .snowflake)
        .tagged("Snow")
    Label("Swift", systemSymbol: .swift)
        .tagged("Swift")
}
```

### Predefined Buttons
Define default buttons and cancel buttons as well as certain types of default buttons the fast way.

```swift
Button.addButton {
    print("Add")
}
```

### Safe Subscript
Access and set elements of an array the safe way. If an index is out of range, the getter returns nil and the setter takes no effect.

```swift
let array = ["Hello", "World"]
print(array[safe: 2])
```

### Selection Item Picker
A picker view for types with an identifier, title, and icon.

```swift
let items = [SomeSelectionItem("Swift", icon: .swift)]
SelectionItemPicker(selection: $selection, items: items)
```

### Toolbar
A custom toolbar for inside a SwiftUI view.

```swift
@ArrayBuilder<ToolbarGroup> var toolbar: [ToolbarGroup] {
    ToolbarGroup {
        ToolbarAction("Plus", systemSymbol: .plus) {
            print("Plus")
        }
        ToolbarAction("Minus", systemSymbol: .minus) {
            print("Minus")
        }
    }
    .spacer()
    ToolbarGroup {
        ToolbarAction("Restart", systemSymbol: .restart) {
            print("Restart")
        }
    }
}
```

### Undo Provider
A function for providing undo and redo functionality in a macOS app.

```swift
class ViewModel: ObservableObject {
    @Published var text = "" {
        didSet {
            UndoProvider.registerUndo(withTarget: self, set: { $0.text = oldValue })
        }
    }
}
```

## Thanks

### Dependencies
- [SFSafeSymbols][5] licensed under the [MIT license][6]
- [SwiftLintPlugin][7] licensed under the [MIT license][8]

### Other Thanks
- The [contributors][9]
- [SourceDocs][10] used for generating the [docs][11]
- [SwiftLint][12] for checking whether code style conventions are violated
- Jaden Geller: GitHub Gist [ArrayBuilder.swift][13]
- Matthaus Woolard: Article [Handling undo & redo in SwiftUI][14]
- The programming language [Swift][15]

[1]:	#Elements
[2]:	#Installation
[3]:	#Usage
[4]:	#Thanks
[5]:	https://github.com/SFSafeSymbols/SFSafeSymbols
[6]:	https://github.com/SFSafeSymbols/SFSafeSymbols/blob/stable/LICENSE
[7]:	https://github.com/lukepistrol/SwiftLintPlugin
[8]:	https://github.com/lukepistrol/SwiftLintPlugin/blob/main/LICENSE
[9]:	Contributors.md
[10]:	https://github.com/SourceDocs/SourceDocs
[11]:	Documentation/Reference/ColibriComponents/README.md
[12]:	https://github.com/realm/SwiftLint
[13]:	https://gist.github.com/JadenGeller/c375fc15ad5900a0ddac4ed8ba8307a9
[14]:	https://nilcoalescing.com/blog/HandlingUndoAndRedoInSwiftUI/
[15]:	https://github.com/apple/swift