import UIKit


// 포유류에는 고양이, 강아지, 생쥐, 고래 등이 있습니다. 그중 물 속에 사는 동물은 고래입니다
var mammalia :Set<String> = ["고양이", "강아지", "생쥐", "고래"]
var seaLive :Set<String> = ["고래"]
var earthLive :Set<String> = ["고양이", "강아지", "생쥐"]

print("포유류에는 \(mammalia) 등이 있습니다.")

let waterLiveMammalia = mammalia.intersection(seaLive)
print("그 중 물 속에 사는 동물은 \(waterLiveMammalia)입니다.")

let earthLiveMammalia = mammalia.intersection(earthLive)
print("그 중 땅 위에 사는 동물은 \(earthLiveMammalia)입니다.")

