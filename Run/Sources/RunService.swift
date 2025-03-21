//
//  RunService.swift
//  Run
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import Model
import Core

public final class DefaultRunService: RunService {

  public init() {}

  public func fetch() async throws -> Run {
    return Run()
  }
}
