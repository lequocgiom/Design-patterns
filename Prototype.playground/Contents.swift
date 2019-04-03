//Prototype

protocol Game {
    func setupScore(teamA: Int, teamB: Int)
    func clone() -> Game
}

class BasketballGame: Game {
    
    init() { }
    
    init(basketballGame: BasketballGame) {
        
    }
    
    func setupScore(teamA: Int, teamB: Int) {
        
    }
    
    func clone() -> Game {
        return BasketballGame(basketballGame: self)
    }
    
    
}

class FootballGame: Game {
    
    init(footballGame: FootballGame) { }
    
    func setupScore(teamA: Int, teamB: Int) { }
    
    func clone() -> Game {
        return FootballGame(footballGame: self)
    }
}

let basketallGame = BasketballGame()
basketallGame.setupScore(teamA: 37, teamB: 45)

let ViewController = basketallGame.clone()
// ViewController in init clones given game via game.clone()
// BasketballGame get cloned and ViewController uses its own Game
basketallGame.setupScore(teamA: 40, teamB: 45)
// basketballGame score 40 : 45
// ViewController score 37 : 45
