//
//  PushDestination.swift
//  Routing
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import Model

public enum PushDestination: Hashable {
  case account(Account)
  case run(Run)
}
