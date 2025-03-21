//
//  File.swift
//  Account
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import Model
import Core

public final class DefaultAccountService: AccountService {

  public init() {}

  public func fetch() async throws -> Account {
    return Account()
  }
}
