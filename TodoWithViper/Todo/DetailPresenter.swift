import Foundation

class DetailPresenter: ObservableObject {
    @Published var todo: Todo
    private let router: DetailRouter
    
    init(router: DetailRouter) {
        self.router = router
        self.todo = Todo(id: UUID(), title: "")
    }
    
    func saveTodo() {
        if !todo.title.isEmpty {
            router.homePresenter.addTodo(todo)
            router.navigateToHome()
        }
    }
    
    func goBack() {
        router.navigateToHome()
    }
}
