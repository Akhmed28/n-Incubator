import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = TodoViewModel()
    @State private var newTodoTitle = ""
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                TextField("Enter todo title", text: $newTodoTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("Add") {
                    viewModel.addTodo(title: newTodoTitle)
                    newTodoTitle = ""
                }
            }
            .padding()
            
            ForEach(viewModel.todos) { todo in
                HStack {
                    Text(todo.title)
                    Spacer()
                    Button("Remove") {
                        viewModel.removeTodo(id: todo.id)
                    }
                    .foregroundColor(.red)
                }
                .padding(.horizontal)
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
