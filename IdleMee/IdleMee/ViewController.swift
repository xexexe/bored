//
//  ViewController.swift
//  IdleMee
//
//  Created by Administrator on 15/5/29.
//  Copyright (c) 2015年 Mark Ran. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        Alamofire.request(.GET, "http://www.ranjun.net.cn")//, parameters: ["foo": "bar"]
//            .response { (request, response, data, error) in
//                println(request)
//                println(response)
//                println(error)
//        }
        
        Alamofire.request(.GET, "http://www.ranjun.net.cn")
            .responseString { (_, _, string, _) in
                println(string)
        }
        
        Alamofire.request(.GET, "http://www.ranjun.net.cn/test.json")
            .responseJSON { (_, _, JSON, _) in
                println(JSON)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

