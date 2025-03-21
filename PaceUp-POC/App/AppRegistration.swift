//
//  ViewRegistration.swift
//  PaceUp-POC
//
//  Created by Lucas Abijmil on 21/03/2025.
//

import SwiftUI
import Routing
import Account
import Run

extension View {
  func withPushRouter() -> some View {
    navigationDestination(for: PushDestination.self) { destination in
      switch destination {
      case .account(let account):
        AccountView(account: account)
      case .run(let run):
        RunView(run: run)
      case .dummy:
        DummyView()
      }
    }
  }

  func withSheetRouter(destination: Binding<SheetDestination?>) -> some View {
    sheet(item: destination) { destination in
      switch destination {
      case .account(let account):
        AccountView(account: account)
      case .run(let run):
        RunView(run: run)
      case .dummy:
        DummyView()
      }
    }
  }

  func withFullScreenCoverRouter(destination: Binding<FullScreenCoverDestination?>) -> some View {
    fullScreenCover(item: destination) { destination in
      switch destination {
      case .account(let account):
        AccountView(account: account)
      case .run(let run):
        RunView(run: run)
      case .dummy:
        DummyView()
      }
    }
  }
}
