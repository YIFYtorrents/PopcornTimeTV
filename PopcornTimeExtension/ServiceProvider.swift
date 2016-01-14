import Foundation
import TVServices
import PopcornKit
import RXCommander
import RxBlocking
class ServiceProvider: NSObject, TVTopShelfProvider {
    
    // MARK: - TVTopShelfProvider protocol

    var topShelfStyle: TVTopShelfContentStyle {
        return .Inset
    }

    var topShelfItems: [TVContentItem] {
        let operationQueue = CommandQueue()
        
        
       return try! operationQueue.addCommand( YTSCommandFactory(baseURL: NSURL(string: "https://yts.ag")!).indexMoviesCommand()).toBlocking().first().map { (response, _) -> [TVContentItem] in
            return []
        }!
        
    }

}

