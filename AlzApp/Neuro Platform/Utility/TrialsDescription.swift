//
//  TrialsDescription.swift
//  Neuro Platform
//
//  Created by user175482 on 1/1/21.
//  Copyright © 2021 NDDP. All rights reserved.
//

import Foundation
import SwiftUI

enum TrialType {
    // for adaptive parkinson's & alzheimer's tests
    case fast
    case emptyPadDrawing
    //case accurate
    case practice_screen
    // case animation_screen
    case encoding_step1
    case encoding_step2
    case encoding_step3
    case distractor_step1
    case distractor_step2
    case distractor_step3
    case retrieval_step1
    case multiple_choice
    case timer
    
    // for non-adaptive tests
    case level1
    case level2
    case level3
    case level4
    case level5
}

enum TrialShape {
    case circle
    case spirosquare
    case rectangle
    case multipleshapes
    case archspiral
}

enum LevelNum {
    case level1
    case level2
    case level3
    case level4
    case level5
    case normal1
    case normal2
    case fast
    case no_temp
}

var trialListParkinson: [TrialType] = [
    .practice_screen, .encoding_step1, .encoding_step2, .fast, .encoding_step3
]

var trialListAlz: [TrialType] = [
    .practice_screen, .encoding_step1, .encoding_step2, .encoding_step3, .emptyPadDrawing, .distractor_step1, .distractor_step2, .distractor_step3, .retrieval_step1, .timer, .multiple_choice
]

var trialListNonAdap: [TrialType] = [
    .level1, .level2, .level3, .level4, .level5
]

var defaultLevelList: [LevelNum] = [
    .level1, .level2, .level3, .level4, .level5
]

var levelListNonAdap: [LevelNum] = [
    .normal1, .normal2, .fast, .no_temp
]
