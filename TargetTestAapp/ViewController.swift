//
//  ViewController.swift
//  TargetTestAapp
//
//  Created by Rohit.Singh on 01/02/17.
//  Copyright © 2017 Rohit.Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        /******** How IT works **************
            1) We have created 3 Targets
            2) We have created 3 .xcconfig files
            3.0) We have assigned same keys in all the config files, but different values.
            3.1) "OTHER_SWIFT_FLAGS = -D DEV" = We have to write this line in each config file to laod it properly. It has a specific format. That is "OTHER_SWIFT_FLAGS = -D 'name of the config file' ".

            4) Now we have created 3 .plist files
            5) We have assigned each .plist file to the corresponding targets
            6) Defined different Bundle Display Name and identifier in each .plist file for each target.
            7) Under Schemes on the top bar just to the right side of the "STOP" button , we have created 3 schemes and assigned relevent targets.
            8) Finally we have added the "-ObjC -all_load" under other linker flags in project settings. IT IS VERY IMPORTANT STEP , WHICH IS VERY MUCH REQUIRED TO LOAD THE CONFIG FILES SO THAT WE CAN MAKE A CHECK ON THE BASIS OF THE VARIOUS CONFIG FILES.
            9) WE WILL USE #if and #elseif and #endif format to make the check.
 
 
 
        */
        
        
        
        #if DEV
            print("DEV")
        #elseif QA
            print("QA")
        #elseif APPSTORE
            print("APPSTORE")
        #else
            print("DEFAOUT")
        #endif
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

