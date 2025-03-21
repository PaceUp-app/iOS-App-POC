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
      case .account:
        AccountView()
      case .run:
        RunView()
      case .dummy:
        Text("Dummy View")
      }
    }
  }

  func withSheetRouter(destination: Binding<SheetDestination?>) -> some View {
    sheet(item: destination) { destination in
      switch destination {
      case .account:
        AccountView()
      case .run:
        RunView()
      case .dummy:
        Text("Dummy View")
      }
    }
  }

  func withFullScreenCoverRouter(destination: Binding<FullScreenCoverDestination?>) -> some View {
    fullScreenCover(item: destination) { destination in
      switch destination {
      case .account:
        AccountView()
      case .run:
        RunView()
      case .dummy:
        Text("Dummy View")
      }
    }
  }
}
