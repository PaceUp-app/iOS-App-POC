//
//  RunWorker.swift
//  Run
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import Model
import Core

protocol RunWorker {
  func fetch() async throws -> Run
}

final class DefaultRunWorker: RunWorker {
  private let runService: RunService
  private let accountService: AccountService

  init(runService: RunService, accountService: AccountService) {
    self.runService = runService
    self.accountService = accountService
  }

  public func fetch() async throws -> Run {
    return try await runService.fetch()
  }
}
