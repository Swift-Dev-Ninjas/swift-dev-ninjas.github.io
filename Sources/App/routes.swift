import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // welcome.leaf route
    router.get {
        req -> Future<View> in
        return try req.view().render("base")
    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
