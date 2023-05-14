**EXTENSION**

# `Button`
```swift
extension Button where Label == Text
```

## Methods
### `init(_:role:action:)`

```swift
public init(_ titleKey: LocalizedStringResource, role: ButtonRole? = nil, action: @escaping () -> Void)
```

Initialize a button with a localized title key.
- Parameters:
  - titleKey: A localized title key.
  - role: The button role if there is one, else nil. The default value is nil.
  - action: The action that is executed when the button is being tapped.

#### Parameters

| Name | Description |
| ---- | ----------- |
| titleKey | A localized title key. |
| role | The button role if there is one, else nil. The default value is nil. |
| action | The action that is executed when the button is being tapped. |

### `cancelButton(action:)`

```swift
public static func cancelButton(action: @escaping () -> Void) -> some View
```

A cancel button.
- Parameter action: The action that is executed when the button is being tapped.
- Returns: A view containing the button inclusive keyboard shortcut.

#### Parameters

| Name | Description |
| ---- | ----------- |
| action | The action that is executed when the button is being tapped. |

### `defaultButton(_:symbol:action:)`

```swift
public static func defaultButton(
    _ title: LocalizedStringResource,
    symbol: SFSymbol,
    action: @escaping () -> Void
) -> some View
```

A default action button.
- Parameters:
  - title: The button's title.
  - symbol: The symbol of the button.
  - action: The action that is executed when the button is being tapped.
- Returns: A view containing the button inclusive keyboard shortcut.

#### Parameters

| Name | Description |
| ---- | ----------- |
| title | The button’s title. |
| symbol | The symbol of the button. |
| action | The action that is executed when the button is being tapped. |

### `addButton(action:)`

```swift
public static func addButton(action: @escaping () -> Void) -> some View
```

A default action button for adding items.
- Parameter action: The action that is executed when the button is being tapped.
- Returns: A view containing the button inclusive keyboard shortcut.

#### Parameters

| Name | Description |
| ---- | ----------- |
| action | The action that is executed when the button is being tapped. |

### `confirmationButton(action:)`

```swift
public static func confirmationButton(action: @escaping () -> Void) -> some View
```

A default action button for confirming entered data.
- Parameter action: The action that is executed when the button is being tapped.
- Returns: A view containing the button inclusive keyboard shortcut.

#### Parameters

| Name | Description |
| ---- | ----------- |
| action | The action that is executed when the button is being tapped. |

### `deleteButton(action:)`

```swift
public static func deleteButton(action: @escaping () -> Void) -> some View
```

A delete button.
- Parameter action: The action that is executed when the button is being tapped.
- Returns: A view containing the button inclusive keyboard shortcut.

#### Parameters

| Name | Description |
| ---- | ----------- |
| action | The action that is executed when the button is being tapped. |