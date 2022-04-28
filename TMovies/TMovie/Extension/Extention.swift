//
//  ViewController.swift
//  TMovie
//
//  Created by Naeem Akram on 26/04/2022.
//

import UIKit




extension UIColor {
    class var _lightBlue: UIColor {
        return UIColor(hexString: "#7AC0ED")
    }
    class var _LightGray: UIColor {
        return UIColor(hexString: "#EEEEF2")
    }
}


extension UIColor {
    convenience init(absoluteRed: Int, green: Int, blue: Int) {
        self.init(
            absoluteRed: absoluteRed,
            green: green,
            blue: blue,
            alpha: 1.0
        )
    }

    convenience init(absoluteRed: Int, green: Int, blue: Int, alpha: CGFloat) {
        let normalizedRed = CGFloat(absoluteRed) / 255
        let normalizedGreen = CGFloat(green) / 255
        let normalizedBlue = CGFloat(blue) / 255

        self.init(
            red: normalizedRed,
            green: normalizedGreen,
            blue: normalizedBlue,
            alpha: alpha
        )
    }

    convenience init(hexValue:Int) {
        self.init(
            absoluteRed: (hexValue >> 16) & 0xff,
            green: (hexValue >> 8) & 0xff,
            blue: hexValue & 0xff
        )
    }

    convenience init(hexString:String) {
        var normalizedHexString = hexString.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (normalizedHexString.hasPrefix("#")) {
            normalizedHexString.remove(at: normalizedHexString.startIndex)
        }
        var hexValue:UInt32 = 0
        Scanner(string: normalizedHexString).scanHexInt32(&hexValue)

        self.init(
            hexValue:Int(hexValue)
        )
    }
}

