import Foundation

class HomePresenter: ObservableObject {
    private let interactor: HomeInteractor
    private let router: HomeRouter
    @Published var todos: [Todo] = []
    
    init(interactor: HomeInteractor, router: HomeRouter) {
        self.interactor = interactor
        self.router = router
    }
    
    func loadTodos() {
        todos = interactor.fetchTodos()
    }
    
    func addTodo(_ todo: Todo) {
        interactor.addTodo(todo)
        loadTodos()
    }
    
    func navigateToDetail() -> DetailView {
        return router.navigateToDetail(presenter: self)
    }
}
