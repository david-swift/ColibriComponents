//
//  CGFloat.swift
//  ColibriComponents
//
//  Created by david-swift on 23.01.23.
//
// swiftlint:disable no_magic_numbers

import Foundation

extension CGFloat {

    /// The side length of a custom toolbar item.
    internal static var customToolbarSideLength: Self { 20 }
    /// The padding of a custom toolbar.
    internal static var customToolbarPadding: Self { 10 }
    /// The corner radius in many user interface elements.
    public static var colibriCornerRadius: Self { 10 }
    /// The height of a custom toolbar.
    internal static var customToolbarHeight: Self { 40 }
    /// The scale of the button of a custom toolbar action that is not pressed.
    internal static var customToolbarButtonNotPressedScale: Self { 0.6 }
    /// The minimum width of an item in a ``SelectionItemPicker``.
    internal static var selectionItemPickerMinimumWidth: Self { 80 }
    /// The minimum scale factor of an item in a ``SelectionItemPicker``.
    internal static var minimumSelectionItemPickerScaleFactor: Self { 0.8 }
    /// The font size of the image of a selection item.
    internal static var selectionSymbolViewFontSize: Self { 20 }
    /// The padding around the items of a Freeform toolbar.
    internal static var freeformToolbarPadding: Self { 9 }
    /// The padding around a single item of a Freeform toolbar.
    internal static var freeformActionPadding: Self { -4 }
    /// The radius of the shadow of a Freeform toolbar.
    internal static var freeformToolbarShadowRadius: Self { 15 }
    /// The y offset of the Freeform toolbar shadow.
    internal static var freeformToolbarShadowOffset: Self { 10 }
    /// The sidelength of the circle in the background of a Freeform toolbar.
    internal static var freeformBackgroundSidelength: Self { 22 }
    /// The sidelength of the image in the foreground of a Freeform toolbar.
    internal static var freeformForegroundSidelength: Self { 13 }

}
