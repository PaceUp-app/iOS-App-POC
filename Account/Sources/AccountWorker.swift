//
//  AccountWorker.swift
//  Account
//
//  Created by Lucas Abijmil on 21/03/2025.
//


public protocol AccountWorker {
  func fetch() async throws -> Account
}

public final class DefaultAccountWorker: AccountWorker {
  private let service: AccountService

  init(service: AccountService) {
    self.service = service
  }

  public func fetch() async throws -> Account {
    return try await service.fetch()
  }
}
