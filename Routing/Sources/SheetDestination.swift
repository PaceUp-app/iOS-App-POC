//
//  SheetDestination.swift
//  Routing
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import Model

public enum SheetDestination: Hashable, Identifiable {
  case account(Account)
  case run(Run)
  case dummy

  public var id: Self {
    return self
  }
}
