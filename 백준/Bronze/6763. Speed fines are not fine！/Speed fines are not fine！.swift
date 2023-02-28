let a = Int(readLine()!)!
let b = Int(readLine()!)!

if b - a <= 0 {
    print("Congratulations, you are within the speed limit!")
}
else if b - a <= 20 {
    print("You are speeding and your fine is $100.")
}
else if b - a <= 30 {
    print("You are speeding and your fine is $270.")
}
else {
    print("You are speeding and your fine is $500.")
}