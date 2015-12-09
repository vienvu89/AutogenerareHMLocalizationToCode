//
//  ViewController.swift
//  CreateaLocalization
//
//  Created by Vien Vu  on 10/8/15.
//  Copyright © 2015 VienVu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonEngIsTapped(sender: AnyObject) {
        let file = "key"
        
        let path = NSBundle.mainBundle().pathForResource(file, ofType: "txt")
        let input = try! String(contentsOfFile: path!, encoding: NSUTF8StringEncoding)
        
        
        let inputArray = input.characters.split {
            $0 == "\n"
            }.map { String($0) }
        
        
        let file2 = "eng"
        
        let path2 = NSBundle.mainBundle().pathForResource(file2, ofType: "txt")
        let input2 = try! String(contentsOfFile: path2!, encoding: NSUTF8StringEncoding)
        
        
        let inputArray2 = input2.characters.split {
            $0 == "\n"
            }.map { String($0) }
        var outPut = [String]()
        for var i = 0; i < inputArray.count; i++ {
            var string1 = "\"" + "\(inputArray[i])"  + "\""
            string1 += " " + "=" + " "

            string1 += "\"" + "\(inputArray2[i])"  + "\";"
            outPut.append(string1)
        }
        let file3 = "output"
        
        let path3 = NSBundle.mainBundle().pathForResource(file3, ofType: "txt")
        let joined = outPut.joinWithSeparator("\n")
        try! joined.writeToFile(path3!, atomically: false, encoding: NSUTF8StringEncoding)
        
        let input3 = try! String(contentsOfFile: path3!, encoding: NSUTF8StringEncoding)
        print(input3)
    }

    @IBAction func buttonSimIsTapped(sender: AnyObject) {
        let file = "key"
        
        let path = NSBundle.mainBundle().pathForResource(file, ofType: "txt")
        let input = try! String(contentsOfFile: path!, encoding: NSUTF8StringEncoding)
        
        
        let inputArray = input.characters.split {
            $0 == "\n"
            }.map { String($0) }
        
        
        let file2 = "trachi"
        
        let path2 = NSBundle.mainBundle().pathForResource(file2, ofType: "txt")
        let input2 = try! String(contentsOfFile: path2!, encoding: NSUTF8StringEncoding)
        
        
        let inputArray2 = input2.characters.split {
            $0 == "\n"
            }.map { String($0) }
        var outPut = [String]()
        for var i = 0; i < inputArray.count; i++ {
            var string1 = "\"" + "\(inputArray[i])"  + "\""
            string1 += " " + "=" + " "
            
            string1 += "\"" + "\(inputArray2[i])"  + "\";"
            outPut.append(string1)
        }
        let file3 = "output"
        
        let path3 = NSBundle.mainBundle().pathForResource(file3, ofType: "txt")
        let joined = outPut.joinWithSeparator("\n")
        try! joined.writeToFile(path3!, atomically: false, encoding: NSUTF8StringEncoding)
        
        let input3 = try! String(contentsOfFile: path3!, encoding: NSUTF8StringEncoding)
        print(input3)
    }
    @IBAction func buttonTraChinIsTapped(sender: AnyObject) {
        let file = "key"
        
        let path = NSBundle.mainBundle().pathForResource(file, ofType: "txt")
        let input = try! String(contentsOfFile: path!, encoding: NSUTF8StringEncoding)
        
        
        let inputArray = input.characters.split {
            $0 == "\n"
            }.map { String($0) }
        
        
        let file2 = "simchi"
        
        let path2 = NSBundle.mainBundle().pathForResource(file2, ofType: "txt")
        let input2 = try! String(contentsOfFile: path2!, encoding: NSUTF8StringEncoding)
        
        
        let inputArray2 = input2.characters.split {
            $0 == "\n"
            }.map { String($0) }
        var outPut = [String]()
        for var i = 0; i < inputArray.count; i++ {
            var string1 = "\"" + "\(inputArray[i])"  + "\""
            string1 += " " + "=" + " "
            
            string1 += "\"" + "\(inputArray2[i])"  + "\";"
            outPut.append(string1)
        }
        let file3 = "output"
        
        let path3 = NSBundle.mainBundle().pathForResource(file3, ofType: "txt")
        let joined = outPut.joinWithSeparator("\n")
        try! joined.writeToFile(path3!, atomically: false, encoding: NSUTF8StringEncoding)
        
        let input3 = try! String(contentsOfFile: path3!, encoding: NSUTF8StringEncoding)
        print(input3)
    }
    @IBAction func buttonFileIsTapped(sender: AnyObject) {
        let file = "key"
        
        let path = NSBundle.mainBundle().pathForResource(file, ofType: "txt")
        let input = try! String(contentsOfFile: path!, encoding: NSUTF8StringEncoding)
        
        
        let inputArray = input.characters.split {
            $0 == "\n"
            }.map { String($0) }
        
        var outPut = [String]()
        for var i = 0; i < inputArray.count; i++ {
            let string1 = "[_localization localizedStringForKey:@\"\(inputArray[i])\"];"
            
            outPut.append(string1)
        }
        let file3 = "output"
        
        let path3 = NSBundle.mainBundle().pathForResource(file3, ofType: "txt")
        let joined = outPut.joinWithSeparator("\n")
        try! joined.writeToFile(path3!, atomically: false, encoding: NSUTF8StringEncoding)
        
        let input3 = try! String(contentsOfFile: path3!, encoding: NSUTF8StringEncoding)
        print(input3)
        
    }
}

