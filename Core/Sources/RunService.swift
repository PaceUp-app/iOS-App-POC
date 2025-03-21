//
//  File.swift
//  Core
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import Model

public protocol RunService: Sendable {
  func fetch() async throws -> Run
}
