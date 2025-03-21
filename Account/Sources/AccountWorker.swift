//
//  AccountWorker.swift
//  Account
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import Model
import Core

public protocol AccountWorker {
  func fetch() async throws -> Account
}

public final class DefaultAccountWorker: AccountWorker {
  private let accountService: AccountService
  private let runService: RunService

  init(accountService: AccountService, runService: RunService) {
    self.accountService = accountService
    self.runService = runService
  }

  public func fetch() async throws -> Account {
    return try await accountService.fetch()
  }
}
