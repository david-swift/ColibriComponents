//
//  Color.swift
//  ColibriComponents
//
//  Created by david-swift on 19.01.23.
//

import SwiftUI

extension Color: Codable {

    /// The red RGBA value of the color.
    public var red: CGFloat { getRGBA(.red) }
    /// The green RGBA value of the color.
    public var green: CGFloat { getRGBA(.green) }
    /// The blue RGBA value of the color.
    public var blue: CGFloat { getRGBA(.blue) }
    /// The alpha RGBA value of the color.
    public var alpha: CGFloat { getRGBA(.alpha) }

    /// Initialize a color from encoded data.
    /// - Parameter decoder: Decodes the RGB values from a native format into in-memory representations.
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let colorData = try container.decode(Data.self)
        guard let nsColor = try NSKeyedUnarchiver.unarchivedObject(ofClass: NSColor.self, from: colorData) else {
            self.init(white: 0)
            return
        }
        self = Color(nsColor: nsColor)
    }

    /// The values of an RGBA representation (red, green, blue and alpha).
    internal enum RGBA {
        /// The red RGBA value.
        case red
        /// The green RGBA value.
        case green
        /// The blue RGBA value.
        case blue
        /// The alpha RGBA value.
        case alpha
    }

    /// Encode a color into a native format for external representation.
    /// - Parameter encoder: Encodes the RGBA value.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        let nsColor = NSColor(self)
        let colorData = try NSKeyedArchiver.archivedData(withRootObject: nsColor, requiringSecureCoding: false)
        try container.encode(colorData)
    }

    /// Get a certain RGBA value.
    /// - Parameter color: The value that is searched for (red, green, blue or alpha).
    /// - Returns: The value.
    internal func getRGBA(_ color: RGBA) -> CGFloat {
        var red, green, blue, alpha: CGFloat
        (red, green, blue, alpha) = (0, 0, 0, 0)
        let nsColor = NSColor(self)
        nsColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        switch color {
        case .red:
            return red
        case .green:
            return green
        case .blue:
            return blue
        case .alpha:
            return alpha
        }
    }

}
