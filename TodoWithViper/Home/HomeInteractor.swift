class HomeInteractor {
    private var todos: [Todo] = []
    
    func fetchTodos() -> [Todo] {
        return todos
    }
    
    func addTodo(_ todo: Todo) {
        todos.append(todo)
    }
}
