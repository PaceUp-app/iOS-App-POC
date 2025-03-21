//
//  File.swift
//  Account
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import Foundation

public protocol AccountService {
  func fetch() async throws -> Account
}

public final class DefaultAccountService: AccountService {
  public func fetch() async throws -> Account {
    return Account(type: .premium)
  }
}
