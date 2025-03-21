//
//  AccountWorker.swift
//  Account
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import Model
import Core

protocol AccountWorker: Sendable {
  func fetch() async throws -> Account
}

final class DefaultAccountWorker: AccountWorker {
  private let accountService: AccountService
  private let runService: RunService

  public init(accountService: AccountService, runService: RunService) {
    self.accountService = accountService
    self.runService = runService
  }

  func fetch() async throws -> Account {
    return try await accountService.fetch()
  }
}
