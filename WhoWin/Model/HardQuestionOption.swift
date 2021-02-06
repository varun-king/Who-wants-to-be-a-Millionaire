//
//  HardQuestionOption.swift
//  WhoWin
//
//  Created by apple on 3/16/20.
//  Copyright © 2020 apple. All rights reserved.
//

import Foundation


class HardQuestionOption{
    
    func hard() -> Int{
        
        
        var ArrayOfBank = [QuestionBank]();
        var ArrayOfBank1:Hard_Question_array = Hard_Question_array();
        ArrayOfBank = ArrayOfBank1.que_array();
        
        var priceOfQue = [100, 200, 300, 500, 1000, 2000, 4000, 8000, 16000, 32000, 64000, 125000, 250000, 500000, 1000000]
        
        var corectAnswers:Int  = 0;
        var totalPrice:Int = 0
        var roundPrice:Int = 0
        var level:Int = 1;
        var counter:Int = 0
        var name, playGame:String?
        var again:String?
        var LifeLineOption = ["A. Fifty Fifty", "B. Call a Friend", "C. Ask Audience"]
    

        
        for  i in 0..<ArrayOfBank.count{
            
            print("\nQuegstion for $ \(priceOfQue[i]) is.....")
            print("\(ArrayOfBank[i].question) \n")
            print("\(ArrayOfBank[i].opt_A)  \n")
            print("\(ArrayOfBank[i].opt_B) \n")
            print("\(ArrayOfBank[i].opt_C) \n")
            print("\(ArrayOfBank[i].opt_D) \n")
            
            var lifeCheck:String
            
            // For life line
            if(level == 2 || level == 3){
                if(LifeLineOption.count >= 1){
                        repeat{
                            if(LifeLineOption.count >= 1){
                                print("Do you want to use lifeline.")
                                
                            }
                            for n in 0..<LifeLineOption.count {
                                print(LifeLineOption[n])
                            }
                            if(LifeLineOption.count >= 1){
                                print("D. No")
                            }
                            
                            lifeCheck = readLine()!.uppercased()
                            if(lifeCheck != "A" && lifeCheck != "B" && lifeCheck != "C" && lifeCheck != "D"){
                                print("Enter Appropriete Answer for life line")
                                lifeCheck = ""
                                print(lifeCheck)
                            }else if(lifeCheck == "D"){
                                break
                            }else if(lifeCheck == "A"){
                                LifeLineOption.removeAll{
                                    $0 == "A. Fifty Fifty"
                                }
                                //var ArrayOfBank1:Easy_Question_array = Easy_Question_array();
                                // ArrayOfBank = ArrayOfBank1.que_array();
                                let somthing = LifeLine();
                                let showtime = somthing.fifty(ans:ArrayOfBank[i].fifty, opA:ArrayOfBank[i].opt_A, opB:ArrayOfBank[i].opt_B, opC:ArrayOfBank[i].opt_C, opD:ArrayOfBank[i].opt_D);
                                //print(showtime)
                                print("Two wrong answers are removed \n \(showtime[0]) \n \(showtime[1])")
                                
                            }else if(lifeCheck == "B"){
                                LifeLineOption.removeAll{
                                    $0 == "B. Call a Friend"
                                }
                                let somthing = LifeLine();
                                let showtime = somthing.call_friend(ans:ArrayOfBank[i].fifty, opA:ArrayOfBank[i].opt_A, opB:ArrayOfBank[i].opt_B, opC:ArrayOfBank[i].opt_C, opD:ArrayOfBank[i].opt_D);
                                print("\(showtime[0])")
                                
                            }else if(lifeCheck == "C"){
                                LifeLineOption.removeAll{
                                    $0 == "C. Ask Audience"
                                }
                                let somthing = LifeLine();
                                let showtime = somthing.ask_audience(ans:ArrayOfBank[i].fifty, opA:ArrayOfBank[i].opt_A, opB:ArrayOfBank[i].opt_B, opC:ArrayOfBank[i].opt_C, opD:ArrayOfBank[i].opt_D);
                                for i in 0..<showtime.count{
                                    print("\(showtime[i])")
                                }
                                
                            }
                        }while (lifeCheck == "")
                }
            }
            // AFter lifeline Select the answer
            var ansValue:String
            repeat{
                
                print("Select Your Answer....")
                ansValue = readLine()!
                let check:String =  ansValue.uppercased()
                //print(check)
                if(check != "A" && check != "B" && check != "C" && check != "D"){
                    print("Enter Appropriete Answer.")
                    ansValue = ""
                }
                
                if(ansValue != ""){
                    print("Confirm Your Answer \n Yes  \n No")
                    var confirm = readLine()!
                    let check2 = confirm.uppercased();
                    //print(check2)
                    if(check2 != "YES" && check2 != "NO"){
                        print("Enter Appropriete Confirmation.")
                        confirm = ""
                        ansValue = ""
                    }else if(check2 == "NO"){
                        confirm = ""
                        ansValue = ""
                    }
                }
            }while(ansValue == "")
            
            if(!ansValue.isEmpty){
                if(ansValue.uppercased() == ArrayOfBank[i].ans){
                    print("Congrates, you are right,  you won \(priceOfQue[i])")
                    corectAnswers += 1
                    totalPrice = totalPrice + priceOfQue[i];
                    //print("Total Correct Answers are \(corectAnswers)")
                    //print("You are on level \(level)")
                    
                    
                    
                    if(corectAnswers == 5 || corectAnswers == 10 )
                    {
                        level += 1
                        var walkAway:String?
                        repeat{
                            print("Do you want to walk away with $\(priceOfQue[i])  \n Yes \n No")
                            walkAway = readLine()
                            if(walkAway?.lowercased() == "yes"){
                                print("..............\n  Hurray You won \(priceOfQue[i]). \n.................")
                                again = "no"
                                counter = 273
                                break
                                
                            }else if(walkAway != "no"){
                                print("Enter appropriete answers")
                            }else if(walkAway == "no"){
                                print("You are on level \(level)")
                            }
                        }while(walkAway == "")
                        
                        
                    }else if(corectAnswers == 15){
                        print("\n ..................\n Congratualation you won the game!!!!!!\n................")
                        corectAnswers = 0;
                        level = 1;
                        LifeLineOption.removeAll();
                        LifeLineOption = ["A. Fifty Fifty", "B. Call a Friend", "C. Ask Audience"]
                        repeat{
                            print("Do you want to Play again\n Yes \n No")
                            again = readLine()
                            
                            if(again?.lowercased() == "no"){
                                print("..............\n  Hurray You won \(priceOfQue[i]). \n.................")
                                counter = 273
                                break
                                
                            }
                        }while(again == "")
                    }
                    
                    
                }else{
                    print("Sorry Your answer is wrong go Home")
                    print("Total Correct Answers are \(corectAnswers)")
                    print("You are on level \(level)")
                    corectAnswers = 0;
                    level = 1;
                    LifeLineOption.removeAll();
                    LifeLineOption = ["A. Fifty Fifty", "B. Call a Friend", "C. Ask Audience"]
                    repeat{
                        print("Do you want to Play again\n Yes \n No")
                        again = readLine()
                        
                        if(again?.lowercased() == "no"){
                            counter = 273
                            break
                        }
                        else if(again?.lowercased() == "yes"){
                            corectAnswers = 0
                            level = 1
                            
                            break
                        }
                    }while(again == "")
                    if(again?.lowercased() == "yes"){
                        break
                    }
                    
                }
            }else{
                print("Answer Should not be empty.\n Please select appropriete answer")
            }
            if(again?.lowercased() == "no"){
                counter = 273
                break
                
            }
            
        }
        return counter
    }
    
}
