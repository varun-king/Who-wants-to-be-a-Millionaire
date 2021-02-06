//
//  Lifeline.swift
//  WhoWin
//
//  Created by apple on 3/14/20.
//  Copyright © 2020 apple. All rights reserved.
//

import Foundation

class LifeLine{
    
    func fifty(ans:String, opA:String, opB:String, opC:String, opD:String) -> [String] {
        var resultArray = [String]();
        if(ans == opA){
            resultArray.append(opA)
            resultArray.append(opB)
        }else if(ans == opB){
            resultArray.append(opA)
            resultArray.append(opB)
        }else if(ans == opC){
            resultArray.append(opC)
            resultArray.append(opB)
        }else if(ans == opD){
            resultArray.append(opC)
            resultArray.append(opD)
        }
       
        return resultArray
    }
    func call_friend(ans:String, opA:String, opB:String, opC:String, opD:String) -> [String]
    {
        print("This is call friend life line")
        var friendAns = ["Actualy, I don't know exact Answer", "I thing answer should be \(ans)", "I have confusion between \(opA) and  \(opC)", "I am 100% sure that answer is \(ans)"]
         let n = Int(arc4random_uniform(4))
        return [friendAns[n]]
    }
    func ask_audience(ans:String, opA:String, opB:String, opC:String, opD:String) -> [String]
    {
        print("This is Ask audience life line")
        var audienceAns = [String]()
        
        if(ans == opA){
            audienceAns.append(" \(opA) 35%")
            audienceAns.append(" \(opB) 15%")
            audienceAns.append(" \(opC) 26%")
            audienceAns.append(" \(opD) 24%")
        }else if(ans == opB){
            audienceAns.append(" \(opA) 15%")
            audienceAns.append(" \(opB) 35%")
            audienceAns.append(" \(opC) 26%")
            audienceAns.append(" \(opD) 24%")
        }else if(ans == opC){
            audienceAns.append(" \(opA) 26%")
            audienceAns.append(" \(opB) 15%")
            audienceAns.append(" \(opC) 35%")
            audienceAns.append(" \(opD) 24%")
        }else if(ans == opD){
            audienceAns.append(" \(opA) 24%")
            audienceAns.append(" \(opB) 15%")
            audienceAns.append(" \(opC) 26%")
            audienceAns.append(" \(opD) 25%")
        }
        
//        audienceAns.append(" \(opA) 35%")
//        audienceAns.append(" \(opB) 15%")
//        audienceAns.append(" \(opC) 26%")
//        audienceAns.append(" \(opD) 24%")
        
         return audienceAns
    }
    
}
