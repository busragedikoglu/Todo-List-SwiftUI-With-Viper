import SwiftUI

struct DetailView: View {
    @ObservedObject var presenter: DetailPresenter
       
       var body: some View {
           VStack {
               HStack {
                   //Go back button
                   Button("Back") {
                       presenter.goBack()
                   }
                   .padding()
                   
                   //Ok button
                   Button("Save") {
                       presenter.saveTodo()
                   }
                   .padding()
               }
               
               TextField("Enter To-Do Title", text: $presenter.todo.title)
                   .textFieldStyle(RoundedBorderTextFieldStyle())
                   .padding()
           }
           .navigationTitle("Add To-Do")
       }
   }
