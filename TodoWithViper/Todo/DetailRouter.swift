import Foundation
import SwiftUI

struct DetailRouter {
    let homePresenter: HomePresenter
    var dismiss: DismissAction?
     
     mutating func setDismissAction(_ dismiss: DismissAction) {
         self.dismiss = dismiss
     }

     func navigateToHome() {
         dismiss?()
     }
 }
