//
//  ViewController.swift
//  swiftTbale
//
//  Created by china on 15/10/26.
//  Copyright © 2015年 china. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource  {

    var tableviewSwift:UITableView?
    var items :NSMutableArray?

    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        self.title="tableView-swift--love"
        
        
        self.items=["111","222","333","444"]
        
        
        
        
        self.tableviewSwift = UITableView(frame:self.view!.frame)
        
        //
//        self.tableviewSwift!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")

        self.tableviewSwift!.delegate=self;
        self.tableviewSwift!.dataSource=self;
        
        self.view .addSubview(self.tableviewSwift!);
        

    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (self.items?.count)!;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        //判断是不是空
        tableView.registerClass(UITableViewCell.self , forCellReuseIdentifier: "cell")
        
        let cell = tableView .dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel!.text = String(format: "%i", indexPath.row+1)
        cell.textLabel?.backgroundColor=UIColor .redColor();
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

