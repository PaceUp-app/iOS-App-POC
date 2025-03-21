//
//  File.swift
//  Core
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import Foundation
import Factory

extension Container {
  public var runService: Factory<RunService?> { self { nil } }
  public var accountService: Factory<AccountService?> { self { nil } }
}
