//
//  EventFriendViewController.swift
//  clock
//
//  Created by Paul on 16/12/2015.
//  Copyright © 2015 paulboiseau. All rights reserved.
//

import Parse

class EventFriendViewController: UIViewController, SearchFriendDelegate {
    
    var name: String!
    var date: NSDate!
    var address: String!
    var coordonate: (lat: Double, long: Double)!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = name
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Mark: - Action methods

    @IBAction func addEvent(sender: AnyObject) {
        
        if let address = self.address, let location = self.coordonate {
            let event = Event(name: name, date: date, address: address, lat: location.lat, long: location.long)
            
            EventSynchroniser.saveObject(event)
            
            // redirect to home view controller
            if let homeViewController = self.storyboard?.instantiateViewControllerWithIdentifier("homeViewNav") {
                redirect(from: self, to: homeViewController)
            }
        }
    }
    
    
    func getFriends(value: [PFUser], sender: AnyObject) {
        print(value)
    }

    @IBAction func inviteFriend(sender: AnyObject) {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SearchFriend" {
            let searchFriendViewController = segue.destinationViewController as! SearchFriendViewController
            searchFriendViewController.delegate = self
        }
    }
}
