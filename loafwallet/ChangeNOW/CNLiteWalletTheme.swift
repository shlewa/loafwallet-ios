//
//  CNLiteWalletTheme.swift
//  loafwallet
//
//  Created by Pavel Pronin on 26.07.2020.
//  Copyright © 2020 Litecoin Foundation. All rights reserved.
//

import CNIntegration

struct CNLiteWalletTheme: Theme {

    let mainButtonCornerRadius: CGFloat? = 4
    let cellSelectionCornerRadius: CGFloat = 4

    let colors: ThemeColors = CNLiteWalletThemeColors()
    let fonts: ThemeFonts = CNLiteWalletThemeFonts()
}

struct CNLiteWalletThemeColors: ThemeColors {

    let lightBackground = UIColor(red: 0.969, green: 0.969, blue: 0.969, alpha: 1) // F7F7F7
    let primaryGray = UIColor(red: 0.827, green: 0.843, blue: 0.855, alpha: 1) // D3D7DA
    let darkBackground = UIColor(red: 0.165, green: 0.255, blue: 0.408, alpha: 1) // 2A4168
    let background = UIColor(red: 0.118, green: 0.184, blue: 0.294, alpha: 1) // 1E2F4B
    let main = UIColor(red: 0.239, green: 0.369, blue: 0.596, alpha: 1) // 3D5E98
    let mainLight = UIColor(red: 0.388, green: 0.388, blue: 0.455, alpha: 1) // 143800
    let mainSelection = UIColor(red: 0.373, green: 0.565, blue: 0.898, alpha: 1) // 5F90E5
    let primarySelection = UIColor(red: 0.373, green: 0.565, blue: 0.898, alpha: 1) // 5F90E5
    let placeholder = UIColor(red: 1, green: 1, blue: 1, alpha: 0.5) // 030303
    let primaryOrange = UIColor(red: 0.941, green: 0.729, blue: 0.047, alpha: 1) // 191924
    let primaryRed = UIColor(red: 0.882, green: 0.384, blue: 0.384, alpha: 1) // f5f7ff

    let transactionSubTitle = UIColor(red: 0.118, green: 0.184, blue: 0.294, alpha: 1) // 1E2F4B
    let transactionBackground = UIColor(red: 0.239, green: 0.369, blue: 0.596, alpha: 1) // 3D5E98
}

struct CNLiteWalletThemeFonts: ThemeFonts {

    // MARK: Description

    var minorDescription: UIFont {
        return light(size: 10)
    }

    var normalDescription: UIFont {
        return light(size: 14)
    }

    var regularDescription: UIFont {
        return light(size: 16)
    }

    var mediumDescription: UIFont {
        return light(size: 18)
    }

    // MARK: Text

    var minorText: UIFont {
        return regular(size: 10)
    }

    var smallText: UIFont {
        return regular(size: 12)
    }

    var normalText: UIFont {
        return regular(size: 14)
    }

    var regularText: UIFont {
        return regular(size: 16)
    }

    var mediumText: UIFont {
        return regular(size: 18)
    }

    // MARK: Title

    var minorTitle: UIFont {
        return medium(size: 10)
    }

    var smallTitle: UIFont {
        return medium(size: 12)
    }

    var normalTitle: UIFont {
        return medium(size: 14)
    }

    var regularTitle: UIFont {
        return medium(size: 16)
    }

    var medianTitle: UIFont {
        return medium(size: 17)
    }

    var mediumTitle: UIFont {
        return medium(size: 18)
    }

    var largeTitle: UIFont {
        return medium(size: 20)
    }

    // MARK: Headline

    var normalHeadline: UIFont {
        return semibold(size: 14)
    }

    var mediumHeadline: UIFont {
        return semibold(size: 18)
    }

    var bigHeadline: UIFont {
        return semibold(size: 22)
    }

    var greatHeadline: UIFont {
        return semibold(size: 24)
    }

    // MARK: Header

    var littleHeader: UIFont {
        return bold(size: 11)
    }

    var normalHeader: UIFont {
        return bold(size: 14)
    }

    var regularHeader: UIFont {
        return bold(size: 16)
    }

    // MARK: - Helpers

    private func light(size: CGFloat) -> UIFont {
        return UIFont.barlowLight(size: size)
    }

    private func regular(size: CGFloat) -> UIFont {
        return UIFont.barlowRegular(size: size)
    }

    private func medium(size: CGFloat) -> UIFont {
        return UIFont.barlowMedium(size: size)
    }

    private func semibold(size: CGFloat) -> UIFont {
        return UIFont.barlowSemiBold(size: size)
    }

    private func bold(size: CGFloat) -> UIFont {
        return UIFont.barlowBold(size: size)
    }
}
