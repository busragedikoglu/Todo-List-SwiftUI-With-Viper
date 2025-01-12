import SwiftUI

struct DetailView: View {
    @ObservedObject var presenter: DetailPresenter
    @Environment(\.dismiss) var dismiss
       
       var body: some View {
           VStack {
               TextField("Enter To-Do Title", text: $presenter.todo.title)
                   .textFieldStyle(RoundedBorderTextFieldStyle())
                   .padding()
               
               // Save button
               Button("Save") {
                   presenter.saveTodo()
               }
               .disabled(presenter.todo.title.isEmpty)
               .padding()
           }
           .onAppear {
               presenter.setDismissAction(dismiss)
           }
       }
   }
