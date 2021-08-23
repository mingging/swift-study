import UIKit

func foodSelector(지역 area:String) -> String {
    let foodShopList: [String:[String]]
        = ["금천":["순댕이네얼큰수제비", "삼일식육식당", "총각네부추곱창", "왕게수산"], "광명":["홍두깨칼국수", "호야덤블링", "광명돈까스"], "인천":["충남서산집", "부암갈비", "편가네된장"]]
    
    var shop: [String] = []
    
    if (foodShopList[area] != nil) {
        shop = foodShopList[area]!
    }
    
    let randomShop = shop[Int.random(in: 0..<shop.count)]

    return "\(area)에 있는 가게는 \(shop)입니다.(총 \(shop.count)곳)\n그 중 추천하는 가게는 \(randomShop)입니다."
    
}

print(foodSelector(지역: "금천"))

