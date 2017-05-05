//
//  Prompt.swift
//  breadwallet
//
//  Created by Adrian Corscadden on 2017-05-04.
//  Copyright © 2017 breadwallet LLC. All rights reserved.
//

import UIKit
import LocalAuthentication

enum PromptType {
    case touchId
    case paperKey
    case upgradePin

    static var defaultOrder: [PromptType] = {
        return [.upgradePin, .paperKey, .touchId]
    }()

    var title: String {
        switch self {
        case .touchId:
            return S.Prompts.TouchId.title
        case .paperKey:
            return S.Prompts.PaperKey.title
        case .upgradePin:
            return S.Prompts.UpgradePin.title
        }
    }

    var body: String {
        switch self {
        case .touchId:
            return S.Prompts.TouchId.body
        case .paperKey:
            return S.Prompts.PaperKey.body
        case .upgradePin:
            return S.Prompts.UpgradePin.body
        }
    }

    var trigger: TriggerName {
        switch self {
        case .touchId:
            return .promptTouchId
        case .paperKey:
            return .promptPaperKey
        case .upgradePin:
            return .promptUpgradePin
        }
    }

    func shouldPrompt(walletManager: WalletManager) -> Bool {
        switch self {
        case .touchId:
            return !UserDefaults.hasPromptedTouchId && LAContext.canUseTouchID && !UserDefaults.isTouchIdEnabled
        case .paperKey:
            return UserDefaults.walletRequiresBackup
        case .upgradePin:
            return walletManager.pinLength != 6
        }
    }
}

class Prompt : UIView {

    init(type: PromptType) {
        self.type = type
        super.init(frame: .zero)
        setup()
    }

    let close = UIButton.close
    let type: PromptType
    private let title = UILabel(font: .customBold(size: 14.0), color: .darkText)
    private let body = UILabel.wrapping(font: .customBody(size: 13.0), color: .darkText)

    private func setup() {
        addSubview(title)
        addSubview(body)
        addSubview(close)
        title.constrain([
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: C.padding[2]),
            title.topAnchor.constraint(equalTo: topAnchor, constant: C.padding[2]) ])
        body.constrain([
            body.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            body.topAnchor.constraint(equalTo: title.bottomAnchor),
            body.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -C.padding[2]) ])
        close.constrain([
            close.topAnchor.constraint(equalTo: topAnchor),
            close.trailingAnchor.constraint(equalTo: trailingAnchor) ])
        close.pin(toSize: CGSize(width: 44.0, height: 44.0))
        title.text = type.title
        body.text = type.body
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
