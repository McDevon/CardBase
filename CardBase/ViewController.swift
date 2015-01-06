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
        
        /*
            Testing with mana symbols
        */
        
        var ta = ManaSymbol(value: .Colorless(2), alternate: .Green)
        
        println("Value: \(ta.abbreviation())")
        
        let cs = ManaSymbol(value: .Blue)
        
        println("Value: \(cs.abbreviation())")
        
        let cn = ManaSymbol(value: .White, alternate: .Blue)
        
        println("Value: \(cn.abbreviation())")
        
        println("Value: \(ManaSymbol().abbreviation())")
        
        /*
            Testing with cards
        */
        
        var tower = BaseCard()
        tower.name = "Tower Above"
        tower.manaSymbols = [ManaSymbol(value: .Colorless(2), alternate: .Green),
                             ManaSymbol(value: .Colorless(2), alternate: .Green),
                             ManaSymbol(value: .Colorless(2), alternate: .Green)]
        
        println("\(tower.name) cost: \(tower.manaCost) CMC: \(tower.convertedManaCost)")
        
    }

}

