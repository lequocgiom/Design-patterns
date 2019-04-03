final class LibraryAPI {
    // The shared static constant approach gives other objects access to the singleton object LibraryAPI.
    static let shared = LibraryAPI()
    // The private initializer prevents creating new instances of LibraryAPI from outside.  
    private init() {
        
    }
}
