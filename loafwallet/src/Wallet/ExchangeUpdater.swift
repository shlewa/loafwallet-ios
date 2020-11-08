//
//  ExchangeUpdater.swift
//  breadwallet
//
//  Created by Adrian Corscadden on 2017-01-27.
//  Copyright © 2017 breadwallet LLC. All rights reserved.
//

import Foundation

class ExchangeUpdater : Subscriber {

    //MARK: - Public
    init(store: Store, walletManager: WalletManager) {
        self.store = store
        self.walletManager = walletManager
        store.subscribe(self,
                        selector: { $0.defaultCurrencyCode != $1.defaultCurrencyCode },
                        callback: { reduxState in
                            guard let currentRate = reduxState.rates.first( where: { $0.code == reduxState.defaultCurrencyCode }) else { return }
                            self.store.perform(action: ExchangeRates.setRate(currentRate))
        })
    }

    func refresh(completion: @escaping () -> Void) {
        walletManager.apiClient?.exchangeRates { rates, error in
            guard let currentRate = rates.first( where: { $0.code == self.store.reduxState.defaultCurrencyCode }) else { completion(); return }
            self.store.perform(action: ExchangeRates.setRates(currentRate: currentRate, rates: rates))
            completion()
        }
    }

    //MARK: - Private
    let store: Store
    let walletManager: WalletManager
}
