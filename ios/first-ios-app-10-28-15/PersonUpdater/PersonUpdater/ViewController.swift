//
//  ViewController.swift
//  PersonUpdater
//
//  Created by Brandon Gottlob on 10/26/15.
//  Copyright © 2015 Brandon Gottlob. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    // Set people array to an initially empty array of Person objects
    var people : [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Utilize the initializer to create three Person objects and add them to the people array
        let newPerson1 = Person(firstName: "Han", lastName: "Solo", age: 35)
        people.append(newPerson1)
        let newPerson2 = Person(firstName: "Luke", lastName: "Skywalker", age: 22)
        people.append(newPerson2)
        let newPerson3 = Person(firstName: "Ben", lastName: "Kenobi", age: 75)
        people.append(newPerson3)
        
    }
    
    @IBAction func clickPerson1(sender: AnyObject) {
        // Get the first person in the people array
        let person = people[0]
        
        // Set the label text attribute to each attribute of the person object
        // This has the effect of updating the text in the labels, displying the person data to the user
        firstNameLabel.text = "First Name: \(person.firstName)"
        lastNameLabel.text = "Last Name: \(person.lastName)"
        ageLabel.text = "Age: \(person.age)"
    }
    
    @IBAction func clickPerson2(sender: AnyObject) {
        let person = people[1]
        firstNameLabel.text = "First Name: \(person.firstName)"
        lastNameLabel.text = "Last Name: \(person.lastName)"
        ageLabel.text = "Age: \(person.age)"
    }

    @IBAction func clickPerson3(sender: AnyObject) {
        let person = people[2]
        firstNameLabel.text = "First Name: \(person.firstName)"
        lastNameLabel.text = "Last Name: \(person.lastName)"
        ageLabel.text = "Age: \(person.age)"
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

