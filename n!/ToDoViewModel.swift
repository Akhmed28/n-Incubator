import Foundation

class TodoViewModel: ObservableObject {
    @Published var todos: [TodoModel] = []
    
    func addTodo(title: String) {
        guard !title.isEmpty else { return }
        let newTodo = TodoModel(title: title)
        todos.append(newTodo)
    }
    
    func removeTodo(id: UUID) {
        todos.removeAll { $0.id == id }
    }
}
