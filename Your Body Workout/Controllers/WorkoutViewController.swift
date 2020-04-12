//
//  WorkoutViewController.swift
//  Your Body Workout
//
//  Created by Jean martin Kyssama on 11/04/2020.
//  Copyright © 2020 Jean martin Kyssama. All rights reserved.
//

import UIKit

class WorkoutViewController: UIViewController {
    
    //MARK: Relevant variables
    
    //
    //1 sets counter
    var numberOfSetsCounter: Int = 0
    //number of reps between 10 and 21
    var numberOfReps: Int = Int.random(in: 10 ... 21)
    
    
    // MARK: - Upper body exercises
    var arrayOfUpperBodyExercises: [String] = [
        "Burpees",
        "Diamond push ups ",
        "Plank knees-to-chest",
        "Push ups",
        "Climbers",
        "Jumping jacks",
        "Jumps knees-to-chest",
        "Pikes",
        "Spiderman push ups",
        "Star Plank"
    ]
    
    //MARK: - Abs exercises
    var arrayOfAbsExercises: [String] = [
        "Plank knees-to-elbow",
        "Starfish crunch",
        "21 crunches",
        "Scissor v-ups",
        "V-up russian twists",
        "Hip-touch plank",
        "Sit-up",
        "Leg Scissors",
        "Plank leg lift",
        "Twisting pistons"
    ]
    
    //MARK: - Lower body exercises
    var arrayOfLowerBodyExercises: [String] = [
        "Assisted pistol squats",
        "Lunges",
        "Reverse lunges",
        "Squat jumps",
        "High knees",
        "High jump",
        "Split lunges",
        "Squats",
        "Side lunges",
        "Step up"
    ]
    
    //MARK: - the different workout duration
    var arrayOfWorkoutDuration: [Int] = [7, 8, 10, 14, 15, 17]
    
    //All the interactive labels
    @IBOutlet weak var numberOfSets: UILabel!
    @IBOutlet weak var workoutDuration: UILabel!
    @IBOutlet weak var upperBodyExercise: UILabel!
    @IBOutlet weak var absExercise: UILabel!
    @IBOutlet weak var lowerBodyExercise: UILabel!
    
    
    
    


    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomWorkout()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: - Button to count sets
    
    @IBAction func buttonToCountSets(_ sender: UIButton) {
        
        //chaque fois qu'on clique sur le bouton ...
        /// on augmente le nombre de set de 1 soit:
        changeNumberOfSetsAndItsValue()
        
    }
    
    //MARK: Button to reset workout/ sets
    
    @IBAction func resetButton(_ sender: UIBarButtonItem) {
        // upon tapping this button
        resetTheSets()
    }
    
    //MARK: - handles changes to set numbers
    func changeNumberOfSetsAndItsValue () {
        numberOfSetsCounter = numberOfSetsCounter + 1
        numberOfSets.text = "Sets: \(numberOfSetsCounter)"
    }
    
    //MARK: - Upon loading call this function to generate a random workout
    func randomWorkout() {
        //modify workout
        upperBodyExercise.text = "\(numberOfReps) \(arrayOfUpperBodyExercises.randomElement()!)"
        absExercise.text = "\(numberOfReps) \(arrayOfAbsExercises.randomElement()!)"
        lowerBodyExercise.text = "\(numberOfReps) \(arrayOfLowerBodyExercises.randomElement()!)"
        //modify workout duration
        workoutDuration.text = "For \(arrayOfWorkoutDuration.randomElement()!) minutes ..."
        
        
    }
    
    //MARK: Functions that resets the sets
    func resetTheSets() {
        numberOfSetsCounter = 0
        numberOfSets.text = "Number of sets: \(numberOfSetsCounter)"
    }
    
}
