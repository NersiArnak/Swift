//HomeWork3
print("task1, task2")
let fitnesJob = (pushUps:40, pullUps:20, squats:50);
print(fitnesJob.pushUps, fitnesJob.pullUps, fitnesJob.squats )

print("\ntask3")
print("max push ups - \(fitnesJob.pushUps)")
print("max pull ups - \(fitnesJob.pullUps)")
print("max squats - \(fitnesJob.squats)")

print("\ntask4")
let fitnesJobNew = (pushUps:60, pullUps:20, squats:20)

var helPPushUps = fitnesJobNew.pushUps
var helpPullUps = fitnesJobNew.pullUps
var helpSquats = fitnesJobNew.squats
helPPushUps = fitnesJob.pushUps
helpPullUps = fitnesJob.pullUps
helpSquats = fitnesJob.squats
print(helPPushUps, helpPullUps, helpSquats)

print("\ntask5")
let resTuple = (resPushUps:fitnesJob.pushUps - fitnesJobNew.pushUps, resPullUps:fitnesJob.pullUps - fitnesJob.pullUps, resSquats:fitnesJob.squats - fitnesJobNew.squats)

print(resTuple)


//ClassWork3
let tupleA : (Int, String) = (1, "Arnak")
let (nubmer, name) = tupleA
tupleA.0
tupleA.1

let (_, name2) = tupleA
name2
let tuple = (index:1, surName:"Nersi")

let a = (x:1, y:2)
var b = (x:2, y:3)
b = a

/*
 let redColor = "red"
 let greenColor = "green"
 let blueColor = "blue"
 */
 
let (redColor, greenColor, blueColor) = ("red", "green", "blue")
redColor

let totalNumber = 5
let merchantName = "Alex"

//print(totalNumber, merchantName)
