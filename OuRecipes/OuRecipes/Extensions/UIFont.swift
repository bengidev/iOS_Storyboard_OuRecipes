//
//  UIFont.swift
//  OuRecipes
//
//  Created by ENB Mac Mini M1 on 14/11/24.
//

import UIKit

extension UIFont {
    func withTraits(traits: UIFontDescriptor.SymbolicTraits) -> UIFont {
        guard let descriptor = fontDescriptor.withSymbolicTraits(traits) else {
            return self
        }

        return UIFont(descriptor: descriptor, size: pointSize)
    }

    func bold() -> UIFont {
        return self.withTraits(traits: .traitBold)
    }

    func italic() -> UIFont {
        return self.withTraits(traits: .traitItalic)
    }

    @available(iOS 13.0, *)
    func rounded() -> UIFont {
        guard let descriptor = fontDescriptor.withDesign(.rounded) else {
            return self
        }

        return UIFont(descriptor: descriptor, size: pointSize)
    }

    @available(iOS 13.0, *)
    func monospaced() -> UIFont {
        guard let descriptor = fontDescriptor.withDesign(.monospaced) else {
            return self
        }

        return UIFont(descriptor: descriptor, size: pointSize)
    }

    @available(iOS 13.0, *)
    func serif() -> UIFont {
        guard let descriptor = fontDescriptor.withDesign(.serif) else {
            return self
        }

        return UIFont(descriptor: descriptor, size: pointSize)
    }
}
