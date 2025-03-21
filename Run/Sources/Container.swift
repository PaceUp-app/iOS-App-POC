//
//  File.swift
//  Run
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import Factory
import Core

#warning("Not ideal but avoid to have a lot of optional...")
extension Container {
  var runWorker: Factory<RunWorker> {
    self { DefaultRunWorker(runService: self.runService.resolve()!, accountService: self.accountService.resolve()!) }
  }
}
