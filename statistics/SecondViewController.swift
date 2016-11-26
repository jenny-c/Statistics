//
//  SecondViewController.swift
//  statistics
//
//  Created by Jenny Chen on 2016-04-22.
//  Copyright © 2016 Jenny Chen. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    // declare variables
    
    var completeTacklesPercentage: Float = 0
    var totalTackles: String = ""
    var completeTackles: String = ""
    
    var forPenalties: Int = 0
    var againstPenalties: Int = 0
    
    var forTurnovers: Int = 0
    var againstTurnovers: Int = 0
    
    var forScrums: Int = 0
    var forScrumsWon: Int = 0
    var forScrumsPercentage: Float = 0
    var againstScrums: Int = 0
    var againstScrumsWon: Int = 0
    var againstScrumsPercentage: Float = 0
    var scrumsPercentage: Float = 0
    
    var forLineouts: Int = 0
    var forLineoutsWon: Int = 0
    var forLineoutsPercentage: Float = 0
    var againstLineouts: Int = 0
    var againstLineoutsWon: Int = 0
    var againstLineoutsPercentage: Float = 0
    var lineoutsPercentage: Float = 0
    
    var teams: String = ""
    

    // labels
    
    @IBOutlet weak var tacklesRatio: UILabel!
    @IBOutlet weak var tacklesPercent: UILabel!
    
    @IBOutlet weak var penaltiesForCount2: UILabel!
    @IBOutlet weak var penaltiesAgainstCount2: UILabel!
    
    @IBOutlet weak var turnoversForCount2: UILabel!
    @IBOutlet weak var turnoversAgainstCount2: UILabel!
    
    @IBOutlet weak var scrumsForCount2: UILabel!
    @IBOutlet weak var scrumsForPercent: UILabel!
    @IBOutlet weak var scrumsAgainstCount2: UILabel!
    @IBOutlet weak var scrumsAgainstPercent: UILabel!
    @IBOutlet weak var scrumsPercent: UILabel!
    
    @IBOutlet weak var lineoutsForCount2: UILabel!
    @IBOutlet weak var lineoutsForPercent: UILabel!
    @IBOutlet weak var lineoutsAgainstCount2: UILabel!
    @IBOutlet weak var lineoutsAgainstPercent: UILabel!
    @IBOutlet weak var lineoutsPercent: UILabel!
    
    @IBOutlet weak var teamNames: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        totalTackles = String(completedTacklesNumber + missedTacklesNumber)
    
        forScrumsPercentage = Float(forScrumsWon) / Float(forScrums) * 100
        againstScrumsPercentage = Float(againstScrumsWon) / Float(againstScrums) * 100
        scrumsPercentage = Float(forScrums) / (Float(forScrums) + Float(againstScrums)) * 100
        
        forLineoutsPercentage = Float(forLineoutsWon) / Float(forLineouts) * 100
        againstLineoutsPercentage = Float(againstLineoutsWon) / Float(againstLineouts) * 100
        lineoutsPercentage = Float(forLineouts) / (Float(forLineouts) + Float(againstLineouts)) * 100

        
        completeTacklesPercentage = Float(completeTackles)! / Float(totalTackles)! * 100
        
        tacklesRatio.text = "\(totalTackles) : \(completeTackles)"
        tacklesPercent.text = "\(completeTacklesPercentage) %"
        
        penaltiesForCount2.text = "\(forPenalties)"
        penaltiesAgainstCount2.text = "\(againstPenalties)"
        
        turnoversForCount2.text = "\(forTurnovers)"
        turnoversAgainstCount2.text = "\(againstTurnovers)"
        
        scrumsForCount2.text = "\(forScrums)"
        scrumsForPercent.text = "\(forScrumsPercentage) %"
        scrumsAgainstCount2.text = "\(againstScrums)"
        scrumsAgainstPercent.text = "\(againstScrumsPercentage) %"
        scrumsPercent.text = "\(scrumsPercentage) %"
        
        lineoutsForCount2.text = "\(forLineouts)"
        lineoutsForPercent.text = "\(forLineoutsPercentage) %"
        lineoutsAgainstCount2.text = "\(againstLineouts)"
        lineoutsAgainstPercent.text = "\(againstLineoutsPercentage) %"
        lineoutsPercent.text = "\(lineoutsPercentage) %"
        
        teamNames.title = teams
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

