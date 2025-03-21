//
//  RunWorker.swift
//  Run
//
//  Created by Lucas Abijmil on 21/03/2025.
//


public protocol RunWorker {
  func fetch() async throws -> Run
}

public final class DefaultRunWorker: RunWorker {
  private let service: RunService

  init(service: RunService) {
    self.service = service
  }

  public func fetch() async throws -> Run {
    return try await service.fetch()
  }
}
