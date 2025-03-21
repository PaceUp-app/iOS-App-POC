//
//  File.swift
//  Account
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import Factory

#warning("Not ideal but avoid to have a lot of optional...")
extension Container {
  var accountWorker: Factory<AccountWorker> {
    self { DefaultAccountWorker(accountService: self.accountService.resolve()!, runService: self.runService.resolve()!) }
  }
}
