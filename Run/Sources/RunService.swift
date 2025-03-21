//
//  RunService.swift
//  Run
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import Model

public protocol RunService {
  func fetch() async throws -> Run
}

public final class DefaultRunService: RunService {
  public func fetch() async throws -> Run {
    return Run()
  }
}
