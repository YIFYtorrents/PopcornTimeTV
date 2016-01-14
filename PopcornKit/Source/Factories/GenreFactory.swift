import Foundation

public class GenreFactory {
    
    // MARK: - Init
    
    public init() {}
    
    
    // MARK: - Public
    
    public func ytsGenres() -> [Genre] {
        var genres: [Genre] = []
        genres.append(Genre(name: "Action", keyword: "action"))
        genres.append(Genre(name: "Adventure", keyword: "adventure"))
        genres.append(Genre(name: "Animation", keyword: "animation"))
        genres.append(Genre(name: "Biography", keyword: "biography"))
        genres.append(Genre(name: "Comedy", keyword: "comedy"))
        genres.append(Genre(name: "Crime", keyword: "crime"))
        genres.append(Genre(name: "Documentary", keyword: "documentary"))
        genres.append(Genre(name: "Drama", keyword: "drama"))
        genres.append(Genre(name: "Family", keyword: "family"))
        genres.append(Genre(name: "Fantasy", keyword: "fantasy"))
        genres.append(Genre(name: "Film-Noir", keyword: "film-noir"))
        genres.append(Genre(name: "History", keyword: "history"))
        genres.append(Genre(name: "Horror", keyword: "horror"))
        genres.append(Genre(name: "Music", keyword: "music"))
        genres.append(Genre(name: "Musical", keyword: "musical"))
        genres.append(Genre(name: "Mistery", keyword: "mistery"))
        genres.append(Genre(name: "Romance", keyword: "romance"))
        genres.append(Genre(name: "Sci-Fi", keyword: "sci-fy"))
        genres.append(Genre(name: "Sport", keyword: "sport"))
        genres.append(Genre(name: "Thriller", keyword: "thriller"))
        genres.append(Genre(name: "War", keyword: "war"))
        genres.append(Genre(name: "Western", keyword: "western"))
        return genres
    }
    
}