//
//  ExchangeCreatePresenter.swift
//  Blockchain
//
//  Created by kevinwu on 8/28/18.
//  Copyright © 2018 Blockchain Luxembourg S.A. All rights reserved.
//

import Foundation

class ExchangeCreatePresenter {
    fileprivate let interactor: ExchangeCreateInput
    weak var interface: ExchangeCreateInterface?

    init(interactor: ExchangeCreateInput) {
        self.interactor = interactor
    }
}

extension ExchangeCreatePresenter: ExchangeCreateDelegate {
    func onViewLoaded() {
        interactor.viewLoaded()
    }

    func onAddInputTapped(value: String) {
        interactor.onAddInputTapped(value: value)
    }

    func onBackspaceTapped() {
        interactor.onBackspaceTapped()
    }
    
    func onContinueButtonTapped() {
        
    }

    func onDisplayInputTypeTapped() {
        interactor.displayInputTypeTapped()
    }
}

extension ExchangeCreatePresenter: ExchangeCreateOutput {
    func primaryFont() -> UIFont {
        return interface?.primaryFont() ?? UIFont.systemFont(ofSize: 17)
    }
    
    func secondaryFont() -> UIFont {
        return interface?.secondaryFont() ?? UIFont.systemFont(ofSize: 17)
    }
    
    func updatedInput(primary: NSAttributedString?, secondary: String?) {
        interface?.updateAttributedPrimary(primary, secondary: secondary)
    }
    
    func updatedInput(primary: String?, primaryDecimal: String?, secondary: String?) {
        interface?.updateInputLabels(primary: primary, primaryDecimal: primaryDecimal, secondary: secondary)
    }
    
    func updatedRates(first: String, second: String, third: String) {
        
    }

    func updateTradingPairValues(left: String, right: String) {
        interface?.updateTradingPairViewValues(left: left, right: right)
    }
}
