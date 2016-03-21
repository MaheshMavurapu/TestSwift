//
//  ViewController.swift
//  Sample_2016_March
//
//  Created by Mahesh Mavurapu on 14/03/16.
//  Copyright © 2016 Mahesh Mavurapu. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    //........... Properties
    @IBOutlet weak var buttonM: UIButton!
    @IBOutlet weak var switchM: UISwitch!
    @IBOutlet var textFields: [UITextField]!
    
    var varibale:String!  //...... Optional. If Question Mark, Then it may return value nil.
    var stringContext:String! //..... Optional
    var id:AnyObject!  //...... Here it is id @ Objective C
    var mutArr:NSMutableArray!
    var count:Int!
    var unknownType:AnyClass!
    
    var arr = [0, "Mavurapu"]
    var dic = ["Key":"Value", "Key1":"Value1", 0:"Value2d"]
    // OR //
    var arr1 = [0, "Mavurapu"]
    var dic1 = ["Key":"Value", "Key1":"Value1"]
    
    var path:String!
    var myString:String!
    var writeError: NSError!
    
    var transmission: String  //....... Same in "struct" & "enum"
    {
        get  //..... WillGet
        {
            return self.transmission
        }
        set  //..... WillSet
        {
            self.transmission = newValue
        }
    }
    
    override func loadView()
    {
        super.loadView()
    }
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }
    
    @IBAction func buttonClicked(sender: AnyObject)
    {
        //...... do, try and catch implementations
        do
        {
            try myString.writeToFile(path, atomically: false,
                encoding: NSUTF8StringEncoding)
        }
        catch
        {
            print("write failure: \(writeError.localizedDescription)")
        }
        //...... do, try and catch implementations
        
        mutArr = NSMutableArray()
        count = textFields.count
        
        for txtField in textFields as [UITextField]  //....... Type Casted @ UITextField
        {
            mutArr!.addObject(txtField)
        }
        
        varibale = "Mahesh_Mavurapu"
        print(varibale)
        print(self.varibale)  //...... For printing.
    }
    
    //............ Table View Delegate & DataSource Methods
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 0
    }
    
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        return UITableViewCell()
    }
    
    internal func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 0
    }
    
    internal func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        
    }
    
    //........... Methods
    
    func buttonAction(sender: UIButton!)
    {
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
//        let button = UIButton(type: UIButtonType.System) as UIButton
//        button.frame = CGRectMake(100, 100, 100, 50)
//        button.backgroundColor = UIColor.greenColor()
//        button.setTitle("Test Button", forState: UIControlState.Normal)
//        button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
//        
//        self.view.addSubview(button)
    }
    
    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(true)
    }
    
    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(true)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    //... Methods
}

class MyDelegate: NSObject
{
    var userName: String!
    
    init(name: String)
    {
        super.init()
        self.userName = name
    }
    
    func windowFunction(name: String) -> String
    {
        let myDelegate = MyDelegate(name: "")
        let returnString: String = "Mahesh_Check"
        return returnString
    }
}

class mahesh
{
    var xyz:String!
}

class mavurapu : NSObject
{
    var transmission: String = "Automatic"
    var numberOfSeats: Int
    
    override init()
    {
        self.numberOfSeats = 4
        super.init()
    }
}

