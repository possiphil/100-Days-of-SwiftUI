//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Philipp Sanktjohanser on 07.12.22.
//

import SwiftUI

struct ContentView: View {
    private var moves = ["Rock", "Paper", "Scissors"]
    private var conditions = ["win", "loose"]
    @State private var selectedMove = "Rock"
    @State private var selectedOpponentMove = "Opponent"
    @State private var winCondition = "win"
    @State private var turnOver = false
    @State private var score = 0
    @State private var opponentScore = 0
    @State private var turn = 1
    @State private var gameOver = false
    
    var body: some View {
        ZStack {
            Background()
            
            VStack {
                Text("Rock Paper Scissors")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 50)
                
                RPSField(isPlayer: false, image: selectedOpponentMove, score: opponentScore)
                
                RPSField(isPlayer: true, image: selectedMove, score: score)
                
                Section("Select your move") {
                    Picker("Rock Paper Scissors", selection: $selectedMove) {
                        ForEach(moves[0...2], id: \.self) {
                            Text($0)
                        }
                    }
                    .modifyForRPS()
                }
                .padding(.horizontal)
                .padding(.bottom, 30)
                
                
                Button {
                    pickRandomMove()
                } label: {
                    Text("Confirm")
                        .primaryButton()
                }
            }
            .alert(getResult(), isPresented: $turnOver) {
                Button("OK", action: resetBoard)
            } message: {
                Text(getResultMessage())
            }
            .alert(getGameResult(), isPresented: $gameOver) {
                Button("Play again", action: restartGame)
            } message: {
                Text("Your score was \(score) and your opponents score was \(opponentScore)")
            }
        }
    }
    
    func pickRandomMove() {
        let index = Int.random(in: 0...2)
        let result = moves[index]
        selectedOpponentMove = result
        
        let conditionIndex = Int.random(in: 0...1)
        let condition = conditions[conditionIndex]
        winCondition = condition
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            turnOver = true
        }
    }
    
    func getResult() -> String {
        var superiorMove = ""
        var inferiorMove = ""
        if selectedMove == selectedOpponentMove {
            return "Draw"
        }
        
        switch selectedMove {
        case "Rock":
            superiorMove = "Paper"
        case "Paper":
            superiorMove = "Scissors"
        case "Scissors":
            superiorMove = "Rock"
        default:
            superiorMove = ""
        }
        
        switch selectedMove {
        case "Rock":
            inferiorMove = "Scissors"
        case "Paper":
            inferiorMove = "Rock"
        case "Scissors":
            inferiorMove = "Paper"
        default:
            inferiorMove = ""
        }
        
        if (selectedOpponentMove == superiorMove && winCondition == "win") || (selectedOpponentMove == inferiorMove && winCondition == "loose") {
            return "You lost"
        }
        return "You won"
    }
    
    func getResultMessage() -> String {
        if getResult() == "Draw" {
            return "You both picked \(selectedMove)!"
        }
        else if getResult() == "You won" {
            return winCondition == "win" ? "\(selectedMove) beats \(selectedOpponentMove)!\nAnd the win condition was winning." : "\(selectedOpponentMove) beats \(selectedMove)!\nAnd the win condition was loosing."
        }
        else {
            return winCondition == "win" ? "\(selectedOpponentMove) beats \(selectedMove)!\nAnd the win condition was winning." : "\(selectedMove) beats \(selectedOpponentMove)!\nAnd the win condition was loosing."
        }
    }
    
    func resetBoard() {
        if getResult() == "You won" {
            score += 1
        } else if getResult() == "You lost" {
            opponentScore += 1
        }
        
        if turn == 10 {
            gameOver = true
            return
        }
        
        turn += 1
        selectedOpponentMove = "Opponent"
    }
    
    func getGameResult() -> String {
        if score == opponentScore {
            return "It's a Draw!"
        } else if score > opponentScore {
            return "GG, You win!"
        } else {
            return "Nice try!"
        }
    }
    
    func restartGame() {
        score = 0
        opponentScore = 0
        selectedOpponentMove = "Opponent"
        turn = 1
    }
}

struct Background: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.indigo, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

struct RPSField: View {
    var isPlayer: Bool
    var image: String
    var score: Int
    
    var body: some View {
        VStack {
            Text(isPlayer ? "You" : "Opponent")
                .padding(.bottom, -20)
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text("Score: \(score)")
                .font(.title2)
                .padding(.top, -10)
        }
        .frame(width: 200, height: 200)
        .background(isPlayer == true ? .green : .gray)
        .clipShape(RoundedRectangle(cornerRadius: 30))
        .padding(.bottom, 30)
    }
}

struct PickerModification: ViewModifier {
    func body(content: Content) -> some View {
        content
            .pickerStyle(.segmented)
            .background(.gray)
            .clipShape(RoundedRectangle(cornerRadius: 7))
            .padding(.top, -30)
    }
}

extension View {
    func modifyForRPS() -> some View {
        modifier(PickerModification())
    }
}

struct ButtonModification: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.primary)
            .frame(width: 300, height: 50)
            .padding(.horizontal, 20)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

extension View {
    func primaryButton() -> some View {
        modifier(ButtonModification())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
