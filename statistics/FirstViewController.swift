//
//  FirstViewController.swift
//  statistics
//
//  Created by Jenny Chen on 2016-04-22.
//  Copyright © 2016 Jenny Chen. All rights reserved.
//

import UIKit

// declare variables

var allTackles: Int = 0
var completedTacklesNumber: Int = 0
var missedTacklesNumber: Int = 0
var tackleCompletionPercentage: Float = 0

var scrumsForWinCounter: Int = 0
var scrumsForLossCounter: Int = 0
var scrumsAgainstWinCounter: Int = 0
var scrumsAgainstLossCounter: Int = 0

var lineoutsForWinCounter: Int = 0
var lineoutsForLossCounter: Int = 0
var lineoutsAgainstWinCounter: Int = 0
var lineoutsAgainstLossCounter: Int = 0

class FirstViewController: UIViewController {
    
    // labels
    
    @IBOutlet weak var completedTacklesCount: UILabel!
    @IBOutlet weak var missedTacklesCount: UILabel!
    
    @IBOutlet weak var penaltiesForCount: UILabel!
    @IBOutlet weak var penaltiesAgainstCount: UILabel!
    
    @IBOutlet weak var turnoversForCount: UILabel!
    @IBOutlet weak var turnoversAgainstCount: UILabel!

    @IBOutlet weak var scrumsForWonCount: UILabel!
    @IBOutlet weak var scrumsForLostCount: UILabel!
    @IBOutlet weak var scrumsAgainstWonCount: UILabel!
    @IBOutlet weak var scrumsAgainstLostCount: UILabel!
    
    @IBOutlet weak var lineoutsForWonCount: UILabel!
    @IBOutlet weak var lineoutsForLostCount: UILabel!
    @IBOutlet weak var lineoutsAgainstWonCount: UILabel!
    @IBOutlet weak var lineoutsAgainstLostCount: UILabel!
    
    @IBOutlet weak var kicks: UILabel!
    
    // steppers
    
    @IBOutlet weak var completedTacklesStepper: UIStepper!
    @IBOutlet weak var missedTacklesStepper: UIStepper!
    
    @IBOutlet weak var forPenaltiesStepper: UIStepper!
    @IBOutlet weak var againstPenaltiesStepper: UIStepper!
    
    @IBOutlet weak var forTurnoversStepper: UIStepper!
    @IBOutlet weak var againstTurnoversStepper: UIStepper!
    
    // text field
    
    @IBOutlet weak var teamsText: UITextField!
    
    
    // functions

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // steppers for tackles
    
    @IBAction func completedTacklesCountChanged(_ sender: UIStepper) {
        completedTacklesNumber = Int(sender.value)
        completedTacklesCount.text = Int(sender.value).description
    }
    
    @IBAction func missedTacklesCountChanged(_ sender: UIStepper) {
        missedTacklesNumber = Int(sender.value)
        missedTacklesCount.text = Int(sender.value).description
    }
    
    
    // steppers for penalties
    
    @IBAction func penaltiesForCountChanged(_ sender: UIStepper) {
        penaltiesForCount.text = Int(sender.value).description
    }
    
    @IBAction func penaltiesAgainstCountChanged(_ sender: UIStepper) {
        penaltiesAgainstCount.text = Int(sender.value).description
    }
    
    
    // steppers for turnovers
    
    @IBAction func turnoversForCountChanged(_ sender: UIStepper) {
        turnoversForCount.text = Int(sender.value).description
    }
    
    @IBAction func turnoversAgainstCountChanged(_ sender: UIStepper) {
        turnoversAgainstCount.text = Int(sender.value).description
    }
    
    
    // buttons for scrums
    
    @IBAction func scrumsForCountChangedWon(_ sender: UIButton) {
        scrumsForWinCounter = scrumsForWinCounter + 1
        scrumsForWonCount.text = "\(String(scrumsForWinCounter)) W"
    }
    
    @IBAction func scrumsForCountChangedLost(_ sender: UIButton) {
        scrumsForLossCounter = scrumsForLossCounter + 1
        scrumsForLostCount.text = "\(String(scrumsForLossCounter)) L"
        
    }
    
    @IBAction func scrumsAgainstCountChangedWon(_ sender: UIButton) {
        scrumsAgainstWinCounter = scrumsAgainstWinCounter + 1
        scrumsAgainstWonCount.text = "\(String(scrumsAgainstWinCounter)) W"
    }
    
    @IBAction func scrumsAgainstCountChangedLost(_ sender: UIButton) {
        scrumsAgainstLossCounter = scrumsAgainstLossCounter + 1
        scrumsAgainstLostCount.text = "\(String(scrumsAgainstLossCounter)) L"
        
    }
    
    
    // buttons for lineouts
    
    @IBAction func lineoutsForCountChangedWon(_ sender: UIButton) {
        lineoutsForWinCounter = lineoutsForWinCounter + 1
        lineoutsForWonCount.text = "\(String(lineoutsForWinCounter)) W"
    }
    
    @IBAction func lineoutsForCountChangedLost(_ sender: UIButton) {
        lineoutsForLossCounter = lineoutsForLossCounter + 1
        lineoutsForLostCount.text = "\(String(lineoutsForLossCounter)) L"
    }
    
    @IBAction func lineoutsAgainstCoundChangedWon(_ sender: UIButton) {
        lineoutsAgainstWinCounter = lineoutsAgainstWinCounter + 1
        lineoutsAgainstWonCount.text = "\(String(lineoutsAgainstWinCounter)) W"
    }
    
    @IBAction func lineoutsAgainstCountChangedLost(_ sender: UIButton) {
        lineoutsAgainstLossCounter = lineoutsAgainstLossCounter + 1
        lineoutsAgainstLostCount.text = "\(String(lineoutsAgainstLossCounter)) W"
    }
    
    @IBAction func newInput(_ sender: AnyObject) {
        
        scrumsForWinCounter = 0
        scrumsForLossCounter = 0
        scrumsAgainstWinCounter = 0
        scrumsAgainstLossCounter = 0
        
        lineoutsForWinCounter = 0
        lineoutsForLossCounter = 0
        lineoutsAgainstWinCounter = 0
        lineoutsAgainstLossCounter = 0
        
        
        completedTacklesStepper.value = 0
        missedTacklesStepper.value = 0
        
        forPenaltiesStepper.value = 0
        againstPenaltiesStepper.value = 0
        
        forTurnoversStepper.value = 0
        againstTurnoversStepper.value = 0
        
        
        completedTacklesCount.text = "0"
        missedTacklesCount.text = "0"
        
        penaltiesForCount.text = "0"
        penaltiesAgainstCount.text = "0"
        
        turnoversForCount.text = "0"
        turnoversAgainstCount.text = "0"
        
        scrumsForWonCount.text = "0 W"
        scrumsForLostCount.text = "0 L"
        scrumsAgainstWonCount.text = "0 W"
        scrumsAgainstLostCount.text = "0 L"
        
        lineoutsForWonCount.text = "0 W"
        lineoutsForLostCount.text = "0 L"
        lineoutsAgainstWonCount.text = "0 W"
        lineoutsAgainstLostCount.text = "0 L"
        
    }
    
    // segue to second view controller

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let statistics: SecondViewController = segue.destination as!  SecondViewController
        
        statistics.totalTackles = String(allTackles)
        statistics.completeTackles = completedTacklesCount.text!
        
        statistics.forPenalties = Int(penaltiesForCount.text!)!
        statistics.againstPenalties = Int(penaltiesAgainstCount.text!)!
        
        statistics.forTurnovers = Int(turnoversForCount.text!)!
        statistics.againstTurnovers = Int(turnoversAgainstCount.text!)!
        
        statistics.forScrums = scrumsForWinCounter + scrumsForLossCounter
        statistics.forScrumsWon = scrumsForWinCounter
        statistics.againstScrums = scrumsAgainstWinCounter + scrumsAgainstLossCounter
        statistics.againstScrumsWon = scrumsAgainstWinCounter
        
        statistics.forLineouts = lineoutsForWinCounter + lineoutsForLossCounter
        statistics.forLineoutsWon = lineoutsForWinCounter
        statistics.againstLineouts = lineoutsAgainstWinCounter + lineoutsAgainstLossCounter
        statistics.againstLineoutsWon = lineoutsAgainstWinCounter
        
        statistics.teams = teamsText.text!
        
        
    }
}






