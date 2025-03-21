//
//  Container.swift
//  PaceUp-POC
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import Factory
import Core
import Run
import Account

extension Container: @retroactive AutoRegistering {
  public func autoRegister() {
    runService.register { DefaultRunService() }
    accountService.register { DefaultAccountService() }
  }
}
