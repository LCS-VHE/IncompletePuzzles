var t = 0
var s = 0
var h = 0

while true{
    print("T? ")

    guard let tinput = readLine() else{
        continue
    }
    guard let t_ = Int(tinput) else{
        continue
    }
    t = t_
    
    print("S? ")
    guard let sinput = readLine() else{
        continue
    }
    guard let s_ = Int(sinput) else{
        continue
    }
    s = s_
    
    print("H? ")
    guard let hinput = readLine() else{
        continue
    }
    guard let h_ = Int(hinput) else{
        continue
    }
    h = h_
    break
}

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
