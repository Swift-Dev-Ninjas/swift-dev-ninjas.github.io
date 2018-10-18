import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // welcome.leaf route
    router.get {
        req -> Future<View> in
        return try req.view().render("Layout/base")
    }
}
