//
//  Acocunt.swift
//  Account
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import Foundation

public struct Account: Identifiable {
  public let id = UUID()
  public let createdAt: Date = .now.addingTimeInterval(-24*60*60)
  public let updatedAt: Date = .now
  public let type: AccountType
}

public enum AccountType {
  case free
  case premium
}
