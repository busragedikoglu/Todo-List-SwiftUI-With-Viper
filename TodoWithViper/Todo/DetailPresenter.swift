import Foundation
import SwiftUI

class DetailPresenter: ObservableObject {
    @Published var todo: Todo
    private var router: DetailRouter
    
    init(router: DetailRouter) {
        self.router = router
        self.todo = Todo(id: UUID(), title: "")
    }
    
    func saveTodo() {
        guard !todo.title.isEmpty else { return }
        router.homePresenter.addTodo(todo)
        router.navigateToHome()
    }
    
    func setDismissAction(_ dismiss: DismissAction) {
          router.setDismissAction(dismiss)
      }
    
    func goBack() {
        router.navigateToHome()
    }
}
