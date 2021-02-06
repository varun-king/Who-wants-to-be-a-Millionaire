//
//  Question_array.swift
//  WhoWin
//
//  Created by apple on 3/14/20.
//  Copyright © 2020 apple. All rights reserved.
//

import Foundation

class Easy_Question_array{
    
    func que_array() -> [QuestionBank]{
        
        let que1:QuestionBank = QuestionBank(que: "Which disease devastated livestock across the UK during 2001?D", op_A: "A. Hand-and-foot", op_B: "B. Foot-in-mouth", op_C: "C. Hand-to-mouth", op_D: "D. Foot-and-mouth", answ: "D", fifty:"D. Foot-and-mouth")
        
        let que2:QuestionBank = QuestionBank(que: "Which of these kills its victims by constriction?B", op_A: "A. Andalucia",
            op_B: "B. Anaconda", op_C: "C. Andypandy", op_D: "D. Annerobinson", answ: "B", fifty:"B. Anaconda")
        
        let que3:QuestionBank = QuestionBank(que: "Which of these might be used in underwater naval operations?A", op_A: "A. Frogmen", op_B: "B. Newtmen", op_C: "C. Toadmen", op_D: "D. Tadpolemen", answ: "A", fifty:"A. Frogmen")
        
        let que4:QuestionBank = QuestionBank(que: "In the UK, VAT stands for value-added ...?C", op_A: "A. Transaction", op_B: "B. Total", op_C: "C. Tax", op_D: "D. Trauma", answ: "C", fifty:"C. Tax")
        
        let que5:QuestionBank = QuestionBank(que: "What are you said to do to a habit when you break it?C", op_A: "A. Throw it", op_B: "B. Punch it", op_C: "C. Kick it", op_D: "D. Eat it", answ: "C", fifty:"C. Kick it")
        
        let que6:QuestionBank = QuestionBank(que: "Where do you proverbially wear your heart, if you show your true feelings?D",
            op_A: "A. On your collar", op_B: "B. On your lapel", op_C: "C. On your cuff", op_D: "D. On your sleeve", answ: "D",
            fifty:"D. On your sleeve")
        
        let que7:QuestionBank = QuestionBank(que: "What might an electrician lay?C", op_A: "A. Tables", op_B: "B. Gables", op_C: "C. Cables", op_D: "D. Stables", answ: "C", fifty:"C. Cables")
        
        let que8:QuestionBank = QuestionBank(que: "What would a 'tattie picker' harvest?C", op_A: "A. Raspberries", op_B: "B. Corn", op_C: "C. Potatoes", op_D: "D. Apples", answ: "C", fifty:"C. Potatoes")
        
        let que9:QuestionBank = QuestionBank(que: "Which of these means adequate space for moving in?", op_A: "A. Elbow room", op_B: "B. Foot rest", op_C: "C. Ear hole", op_D: "D. Knee lounge", answ: "A", fifty:"A. Elbow room")
        
      /*  let que10:QuestionBank = QuestionBank(price: 100, que: "Whst ia J ", op_A: "A. A", op_B: "B. B", op_C: "C. J", op_D: "D. D", answ: "C")*/
        
        
        var ArrayOfBank = [QuestionBank]();
         var ArrayOfBank2 = [QuestionBank]();
        ArrayOfBank.append(que1)
        ArrayOfBank.append(que2)
        ArrayOfBank.append(que3)
        ArrayOfBank.append(que4)
        ArrayOfBank.append(que5)
        ArrayOfBank.append(que6)
        ArrayOfBank.append(que7)
        ArrayOfBank.append(que8)
        ArrayOfBank.append(que9)
       // ArrayOfBank.append(que10)
        
        var ArrayOfBankOld = [Int]();
        
        repeat{
            let n = Int(arc4random_uniform(9))
            if(!ArrayOfBankOld.contains(n)){
                ArrayOfBankOld.append(n)
            }
        }while(ArrayOfBankOld.count != 9)
        
        for j in 0..<ArrayOfBankOld.count{
           // print(ArrayOfBankOld[j])
        }
        
        for i in 0..<ArrayOfBankOld.count{
            ArrayOfBank2.append(ArrayOfBank[ArrayOfBankOld[i]])
           
        }
       
        
        return ArrayOfBank2;
        
    }
    
   
    
}
