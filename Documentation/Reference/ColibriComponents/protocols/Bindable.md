**PROTOCOL**

# `Bindable`

```swift
public protocol Bindable
```

Protocol to track the changes of a binding.

Create a binding by adding a setter to a value:
```swift
TextField(
    "Test",
    text: text.binding { newValue in
        print(newValue)
    }
)
```
