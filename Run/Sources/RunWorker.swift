//
//  RunWorker.swift
//  Run
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import Model
import Core

protocol RunWorker {
  func fetch() async throws -> Run
}

final class DefaultRunWorker: RunWorker {
  private let service: RunService

  init(service: RunService) {
    self.service = service
  }

  public func fetch() async throws -> Run {
    return try await service.fetch()
  }
}
