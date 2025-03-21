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

extension Container {
  var runService: Factory<RunService> {
    self { DefaultRunService() }
  }
  var accountService: Factory<AccountService> {
    self { DefaultAccountService() }
  }
  var runWorker: Factory<RunWorker> {
    self { DefaultRunWorker(runService: self.runService.resolve(), accountService: self.accountService.resolve()) }
  }
  var accountWorker: Factory<AccountWorker> {
    self { DefaultAccountWorker(accountService: self.accountService .resolve(), runService: self.runService.resolve()) }
  }
}
