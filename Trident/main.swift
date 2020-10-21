
var t = Int.collectInput(withPrompt: "T? ", minimum: 1, maximum: 10)
var s = Int.collectInput(withPrompt: "T? ", minimum: 1, maximum: 10)
var h = Int.collectInput(withPrompt: "T? ", minimum: 1, maximum: 10)


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
