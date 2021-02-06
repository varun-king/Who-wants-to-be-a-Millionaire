//
//  main.swift
//  WhoWin
//
//  Created by apple on 3/9/20.
//  Copyright © 2020 apple. All rights reserved.
//

import Foundation


var ArrayOfBank = [QuestionBank]();
var ArrayOfBank1:Easy_Question_array = Easy_Question_array();
ArrayOfBank = ArrayOfBank1.que_array();

var priceOfQue = [100, 500, 1000, 8000, 16000, 32000, 125000, 500000, 1000000]

var corectAnswers:Int  = 0;
var totalPrice:Int = 0
var roundPrice:Int = 0
var level:Int = 1;
var counter:Int = 0
var name, playGame:String?
var again:String?
var LifeLineOption = ["A. Fifty Fifty", "B. Call a Friend", "C. Ask Audience"]


 print("................................................................\n Welcom to..........  \n Who Wants to be a Millionare ")
print("************************************\n")

while true {
           // print(" hey ")
        counter += 1
    repeat{
        print("Enter your name")
        name = readLine()
    }while(name == "")
    
    repeat{
        print("\nTo play game press any key than enter....")
        playGame = readLine()
        //print(playGame)
        if(playGame == "0"){
            counter = 273
            break
        }
    }while(playGame == "")
       // print(playGame)
    if(playGame != ""){
        
        
        print("\n Which kind of difficulty level you want:- \n A. Hard difficulty  \n B. Easy difficulty")
        let req:String? = readLine()!
    
            if(req != ""){
            var new_req = req!.lowercased()

                    if(new_req == "A" || new_req == "a" || new_req == "hard"){
                        new_req = "hard"
                    }
                    else if(new_req == "B" || new_req == "b" || new_req == "easy"){
                        new_req = "easy"
                    }else{
                        print("Sorry.. Please Enter valid Input")
                    }

        
            switch new_req{
                case "easy":
                   
                    
                    for  i in 0..<ArrayOfBank.count{
                       
                        print("\nQuestion for $ \(priceOfQue[i]) is.....")
                        print("\(ArrayOfBank[i].question) \n")
                        print("\(ArrayOfBank[i].opt_A)  \n")
                        print("\(ArrayOfBank[i].opt_B) \n")
                        print("\(ArrayOfBank[i].opt_C) \n")
                        print("\(ArrayOfBank[i].opt_D) \n")
                        
                        var lifeCheck:String
                        
                        // For life line
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
                                   // print(showtime)
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
                        // AFter lifeline Select the answer
                        var ansValue:String
                        repeat{
                            
                            print("Select Your Answer....")
                            ansValue = readLine()!
                            let check:String =  ansValue.uppercased()
                            print(check)
                            if(check != "A" && check != "B" && check != "C" && check != "D"){
                                print("Enter Appropriete Answer.")
                                ansValue = ""
                            }
                            
                            if(ansValue != ""){
                                print("Confirm Your Answer \n Yes  \n No")
                                var confirm = readLine()!
                                let check2 = confirm.uppercased();
                                print(check2)
                                if(check2 != "YES" && check2 != "NO"){
                                    print("Enter Appropriete Answer.")
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
                             //   print("Total Correct Answers are \(corectAnswers)")
                                
                                if(corectAnswers == 3 || corectAnswers == 6 )
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
                                   
                                   
                                }else if(corectAnswers == 9){
                                    print("Congratualation you won the game!!!!!!")
                                    corectAnswers = 0;
                                    level = 1;
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
                
                
            case "hard":
              // this is option for hard.  A function is made process the data
               
                var hardop : HardQuestionOption = HardQuestionOption()
                var count =  hardop.hard()
                    if count == 273{
                        counter = 273
                    }
                
            default:
                print("You ")
            }
        }
       
        if counter == 273 {
            break
        }
    }else{
        print("Enter valid option answer")
    }
}


