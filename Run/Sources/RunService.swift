//
//  RunService.swift
//  Run
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import Model
import Core

final class DefaultRunService: RunService {
  public func fetch() async throws -> Run {
    return Run()
  }
}
