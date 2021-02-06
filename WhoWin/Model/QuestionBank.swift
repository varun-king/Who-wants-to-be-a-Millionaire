//
//  QuestionBank.swift
//  WhoWin
//
//  Created by apple on 3/9/20.
//  Copyright © 2020 apple. All rights reserved.
//

import Foundation


class QuestionBank{
    
   
    var question:String = " "
    var opt_A:String = " "
    var opt_B:String = " "
    var opt_C:String = " "
    var opt_D:String = " "
    var ans:String = " "
    var fifty:String = ""
    
    init(que:String, op_A:String, op_B:String, op_C:String, op_D:String, answ:String, fifty:String) {
       
        self.question = que
        self.opt_A = op_A
        self.opt_B = op_B
        self.opt_C = op_C
        self.opt_D = op_D
        self.ans = answ
        self.fifty = fifty
    }
    
}


