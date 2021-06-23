//
//  ViewController.swift
//  ScoringSystem
//
//  Created by Daniel Washington Ignacio on 23/06/21.
//
/*
 Andy, Ben and Charlotte are playing a board game. The three of them decided to come up with a new scoring system. A player's first initial ("A", "B" or "C") denotes that player scoring a single point. Given a string of capital letters, return an array of the players' scores.

 For instance, if ABBACCCCAC is written when the game is over, then Andy scored 3 points, Ben scored 2 points, and Charlotte scored 5 points, since there are 3 instances of letter A, 2 instances of letter B, and 5 instances of letter C. So the array [3, 2, 5] should be returned.

 Examples

 calculateScores("A") ➞ [1, 0, 0]

 calculateScores("ABC") ➞ [1, 1, 1]

 calculateScores("ABCBACC") ➞ [2, 2, 3]
 Notes

 If given an empty string as an input, return [0, 0, 0].
 */


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.calculateScores("A"))
        print(self.calculateScores("ABC"))
        print(self.calculateScores("ABCBACC"))
    }

    func calculateScores(_ str: String) -> [Int] {
        var A: Int = 0
        var B: Int = 0
        var C: Int = 0
        var arr: [Int] = []
        for n in str{
            if n == "A"{
                A = A + 1
            }else if n == "B"{
                B = B + 1
            }else {
                C = C + 1
            }
        }
        arr.append(A)
        arr.append(B)
        arr.append(C)
        return arr
    }
}

