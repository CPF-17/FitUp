//
//  User.swift
//  SmartFit
//
//  Created by John Law on 1/5/2017.
//  Copyright © 2017 CPF-17. All rights reserved.
//

import UIKit

var user = User()

class User: NSObject {
  var upperBody: Bool = false;
  var lowerBody: Bool = false;
  var isPowerlifting: Bool = false;
  var isBodybuilding: Bool = false;
  var isFitness: Bool = false;
  var isCardio: Bool = false;
  var isChest: Bool = false;
  var isBack: Bool = false;
  var isAbs: Bool = false;
  var isShoulders: Bool = false;
  var isArms: Bool = false;
  var isQuads: Bool = false;
  var isHamstrings: Bool = false;
  var isGlutes: Bool = false;
  var isCalves: Bool = false;
  var isHips: Bool = false;
  var benchPress: String?
  var row: Int = 0;
  var ohp: String?
  var bicepCurl: String?
  var abMachine: String?
  var sitUps: Int = 0;
  var pushUps: Int = 0;
  var pullUps: String?
  var daysToWorkOut: Int = 0;
  var squat: Int = 0;
  var deadlift: Int = 0;
  var lowBar: String?
  var frontSquat: Int = 0;
  var hiBar: Int = 0;
  var calfRaise: Int = 0;
  var hipAd: Int = 0;
  var hipAb: Int = 0;
  var legExt: Int = 0;
  var legCurl: Int = 0;
  var hipMachine: Int?
  
  //body weight can also be used as
  //a control for whether or not
  //user should lift certain amounts of weight.
  var bodyWeight: Int = 0;
  
  
  
}
