//
//  File.swift
//  Run
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import Foundation

public struct Run: Identifiable, Hashable, Sendable {
  public let id = UUID()
  public let distance: Measurement<UnitLength> = .init(value: 12, unit: .kilometers)
  public let startedAt: Date = .now.addingTimeInterval(-60*60)
  public let endedAt: Date = .now

  public init() {}
}
