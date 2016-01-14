import Foundation
import PopcornKit

internal protocol HomeListDelegate: class {
    func userDidFocusGenre(genre: Genre)
}