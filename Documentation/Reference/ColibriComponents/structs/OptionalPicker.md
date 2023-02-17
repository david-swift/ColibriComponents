**STRUCT**

# `OptionalPicker`

```swift
public struct OptionalPicker<SelectionValue, Content>: View where SelectionValue: Hashable, Content: View
```

A picker but with the option to not select any presented value.

A picker but it is possible to not select any of the presented values:
```swift
OptionalPicker("Value", selection: $selection, defaultValue: "Hello") {
    Label("Snow", systemSymbol: .snowflake)
        .tagged("Snow")
    Label("Swift", systemSymbol: .swift)
        .tagged("Swift")
}
```

## Properties
### `selection`

```swift
@Binding var selection: SelectionValue
```

The active selection.

### `titleKey`

```swift
var titleKey: LocalizedStringResource
```

The picker's title.

### `labels`

```swift
var labels: [TaggedView<SelectionValue, Content>]
```

The options' labels.

### `defaultValue`

```swift
var defaultValue: SelectionValue
```

The value that is selected if there is no valid value selected.

### `body`

```swift
public var body: some View
```

The picker's view.

## Methods
### `init(_:selection:defaultValue:labels:)`

```swift
public init(
    _ titleKey: LocalizedStringResource,
    selection: Binding<SelectionValue>,
    defaultValue: SelectionValue,
    @ArrayBuilder<TaggedView<SelectionValue, Content>> labels: () -> ([TaggedView<SelectionValue, Content>])
)
```

The initializer.
- Parameters:
  - titleKey: The title.
  - selection: The active selection.
  - defaultValue: The selected value if there is no valid value selected.
  - labels: The options.

#### Parameters

| Name | Description |
| ---- | ----------- |
| titleKey | The title. |
| selection | The active selection. |
| defaultValue | The selected value if there is no valid value selected. |
| labels | The options. |