import SwiftUI

struct HomeView: View {
    @ObservedObject var presenter: HomePresenter
    
    var body: some View {
        NavigationView {
            VStack {
                List(presenter.todos, id: \.self) { todo in
                    Text(todo.title)
                }
                .navigationTitle("To-Do List")
                
                NavigationLink(destination: presenter.navigateToDetail()) {
                    Text("Add To-Do")
                }
                .padding()
            }
        }
        .onAppear {
            presenter.loadTodos()
        }
    }
}
