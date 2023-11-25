import Cocoa

var movieRatings =
["Tron": 4, "WarGames": 5, "Sneakers": 4]
movieRatings.count
let tronRating = movieRatings["Tron"]
movieRatings["Sneakers"] = 5
movieRatings
let oldRating: Int? =
movieRatings.updateValue(5, forKey: "Tron")
if let lastRating = oldRating, let currentRating =
    movieRatings["Tron"] {
    print("old rating: \(lastRating)")
    print("current rating: \(currentRating)")
}
movieRatings["Hackers"] = 5
movieRatings["Sneakers"] = nil
for (key, value) in movieRatings {
    print("The movie \(key) was rated \(value)")
}
for movie in movieRatings.keys {
    print("User has rated \(movie)")
}
let watchedMovies = Array(movieRatings.keys)

let sportsTeams =
["Sky Blue FC": ["Kailen", "McKenzie", "Thaisa", "Shea", "Jen"],
 "Orlando Pride": ["Sydney", "Toni", "Shelina", "Emily", "Chioma"],
 "Houston Dash": ["Jane", "Michaela", "Rachel", "Allysha", "Janine"]
 ]
for (team, names) in sportsTeams {
    print("The \(team) has the following players: \(names)")
}

for (team, names) in sportsTeams {
    print("\(team) members:")
    for name in names {
        print(name)
    }
    print()
}



