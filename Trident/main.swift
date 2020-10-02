// This is a trident problem
print("T? ")
let t = Int(readLine()!)!
print("S? ")
let s = Int(readLine()!)!
print("H? ")
let h = Int(readLine()!)!

print("\nTRIDENT\n===========================================\n\n")
func add_space(mes: String, space: Int) -> String{
    var mes = mes
    for _ in 1...space{
        mes += " "
    }
    return mes
}


var a:String
for _ in 1...t{
    a = "*"
    for _ in 1...2{
        a = add_space(mes: a, space: s)
        a += "*"
    }
    print(a)
}

a = ""
for _ in 1...((s*2)+3){
    a += "*"
}
print(a)

for _ in 1...h{
    a = ""
    a = add_space(mes: a, space: (1 + s))
    print(a+"*")
}
