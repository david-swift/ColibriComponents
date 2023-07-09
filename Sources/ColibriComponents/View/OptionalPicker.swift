//
//  OptionalPicker.swift
//  ColibriComponents
//
//  Created by david-swift on 23.01.23.
//

import SwiftUI

/// A picker but with the option to not select any presented value.
///
/// A picker but it is possible to not select any of the presented values:
/// ```swift
/// OptionalPicker("Value", selection: $selection, defaultValue: "Hello") {
///     Label("Snow", systemSymbol: .snowflake)
///         .tagged("Snow")
///     Label("Swift", systemSymbol: .swift)
///         .tagged("Swift")
/// }
/// ```
public struct OptionalPicker<SelectionValue, Content>: View where SelectionValue: Hashable, Content: View {

    /// The active selection.
    @Binding var selection: SelectionValue
    /// The picker's title.
    var titleKey: LocalizedStringKey
    /// The options' labels.
    var labels: [TaggedView<SelectionValue, Content>]
    /// The value that is selected if there is no valid value selected.
    var defaultValue: SelectionValue

    /// The picker's view.
    public var body: some View {
        Picker(
            titleKey,
            selection: Binding {
                defaultValue
            } set: { newValue in
                selection = newValue
            }
        ) {
            ForEach(labels) { label in
                label
                    .tag(selection == label.tag ? defaultValue : label.tag)
            }
        }
    }

    /// The initializer.
    /// - Parameters:
    ///   - titleKey: The title.
    ///   - selection: The active selection.
    ///   - defaultValue: The selected value if there is no valid value selected.
    ///   - labels: The options.
    public init(
        _ titleKey: LocalizedStringKey,
        selection: Binding<SelectionValue>,
        defaultValue: SelectionValue,
        @ArrayBuilder<TaggedView<SelectionValue, Content>> labels: () -> ([TaggedView<SelectionValue, Content>])
    ) {
        self.titleKey = titleKey
        self._selection = selection
        self.defaultValue = defaultValue
        self.labels = labels()
    }

}

/// The SwiftUI previews for ``OptionalPicker``.
struct OptionalPicker_Previews: PreviewProvider, View {

    /// The previews.
    static var previews: some View {
        Self()
            .pickerStyle(.segmented)
            .labelsHidden()
            .padding()
    }

    /// The selected optional picker value.
    @State private var selection = "Snow"

    /// The view body.
    var body: some View {
        OptionalPicker(
            "Hello, world!",
            selection: $selection,
            defaultValue: .init()
        ) {
            snowLabel
            swiftLabel
        }
    }

    /// The label for the snow picker value.
    private var snowLabel: TaggedView<String, Label<Text, Image>> {
        Label(
            "Snow",
            systemSymbol: .snowflake
        )
        .tagged("Snow")
    }

    /// The label for the swift picker value.
    private var swiftLabel: TaggedView<String, Label<Text, Image>> {
        Label(
            "Swift",
            systemSymbol: .swift
        )
        .tagged("Swift")
    }

}
