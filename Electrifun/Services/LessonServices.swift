//
//  LessonServices.swift
//  Electrifun
//
//  Created by Abby Fakhri Choiry on 04/08/24.
//

import Foundation

protocol LessonServices{
    func getLesson(lessonNumber: Int) -> Lesson
    func getLessonProgress() -> Int // returning the index for the latest unclocked lesson
    func getCurrentLessonProgress(lessonNumber: Int) -> Int // return the index of current lesson interaction checkpoint
    func restartActiveLesson(lessonNumber: Int) -> Void // restarting the current running session interaction checkpoint back to the begining
    func saveActiveLessonProgress(lessonNumber: Int, checkpointNumber: Int) -> Void // save current lesson progress by interaction checkpoint
}
