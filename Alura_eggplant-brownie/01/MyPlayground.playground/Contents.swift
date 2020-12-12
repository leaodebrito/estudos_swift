import UIKit

let caloria1 = 50
let caloria2 = 100
let caloria3 = 300
let caloria4 = 500

let totalDeCalorias = [50, 100, 300, 500, 450]
print(totalDeCalorias)

//segunda forma de escrever um for
//for i in 0...(totalDeCalorias.count - 1){
//    print(i)
//    print(totalDeCalorias[i])
//}


//terceira forma de escrever um for
//for in

for caloria in totalDeCalorias{
    print(caloria)
}
