import Foundation

public struct Genre {
    
    // MARK: - Attributes
    
    public let name: String
    internal let keyword: String
    
    
    // MARK: - Init
    
    internal init(name: String, keyword: String) {
        self.name =  name
        self.keyword = keyword
    }
}