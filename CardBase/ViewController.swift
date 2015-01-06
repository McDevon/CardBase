//
//  ViewController.swift
//  CardBase
//
//  Created by Jussi Enroos on 2.1.2015.
//  Copyright (c) 2015 Jussi Enroos. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        testCode()
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func testCode() {
        var ta = ManaSymbol()
        ta.value = .Colorless(2)
        ta.alternateValue = .Green
        
        println("Value: \(ta.abbreviation())")
        
        var cs = ManaSymbol()
        cs.value = .Blue
        
        println("Value: \(cs.abbreviation())")
        
        var cn = ManaSymbol()
        cn.value = .White
        cn.alternateValue = .Blue
        
        println("Value: \(cn.abbreviation())")
        
        println("Value: \(ManaSymbol().abbreviation())")
        
    }

}

