import Foundation
import UIKit
import PopcornKit

class HomeListView: UITableViewController {
    
    // MARK: - Attributes
    
    private var genres: [Genre]
    private var genreFactory: GenreFactory
    weak internal var delegate: HomeListDelegate?
    
    
    // MARK: - Init

    required init?(coder aDecoder: NSCoder) {
        self.genreFactory = GenreFactory()
        self.genres = self.genreFactory.ytsGenres()
        super.init(coder: aDecoder)
    }
    
        
    // MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        self.tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "default")
    }
    
    
    // MARK: - UITableView
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.genres.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("default")!
        cell.textLabel?.text = genres[indexPath.row].name
        return cell
    }
    
    override func tableView(tableView: UITableView, didUpdateFocusInContext context: UITableViewFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {
        if let indexPath = context.nextFocusedIndexPath {
            self.delegate?.userDidFocusGenre(genres[indexPath.row])
        }
    }
}