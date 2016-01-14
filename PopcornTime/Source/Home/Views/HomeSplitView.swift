import UIKit
import PopcornKit

class HomeSplitView: UISplitViewController, HomeListDelegate {

    // MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        setupDelegates()
    }
    
    
    // MARK: - Setup
    
    private func setupDelegates() {
        if let listViewNavigationView = self.viewControllers[0] as? UINavigationController
            , listView = listViewNavigationView.topViewController as? HomeListView {
            listView.delegate = self
        }
    }
    
    
    // MARK: - HomeListDelegate
    
    func userDidFocusGenre(genre: Genre) {
        
    }

}
