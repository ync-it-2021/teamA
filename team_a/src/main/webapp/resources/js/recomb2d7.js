pet_gubun = new Array()
pet_gubun.push(new Array("반려견","1"))
pet_gubun.push(new Array("반려묘","2"))


pet_cateogy = new Array()
pet_cateogy.push(new Array("사료","1", "사료 맞춤 제품 찾기를 위해 아래 반려동물의 정보를 선택해주세요. "))
pet_cateogy.push(new Array("배변용품","2", "배변용품 맞춤 제품 찾기를 위해 아래 반려동물의 정보를 선택해주세요."))
pet_cateogy.push(new Array("샴푸","3", "샴푸 맞춤 제품 찾기를 위해 아래 반려동물의 정보를 선택해주세요."))
pet_cateogy.push(new Array("브러쉬","4","브러쉬 맞춤 제품 찾기를 위해 아래 반려동물의 정보를 선택해주세요."))
pet_cateogy.push(new Array("모래","5","모래 맞춤 제품 찾기를 위해 아래 반려동물의 정보를 선택해주세요."))



qu_text = new Array() //질문,보기 text
qu_text.push(new Array("반려견","사료","현재 반려견의 나이를 선택해주세요.","3개월~11개월","12개월~7살","8살~"))
qu_text.push(new Array("반려견","사료","반려견의 현재 건강상 가장 고민인 것을 선택해주세요.","과체중/비만","영양부족","눈물자국","변비/설사","피부트러블","슬개골 등 관절 문제"))
qu_text.push(new Array("반려견","사료","원하시는 사료의 효능 효과를 선택해주세요.","다이어트","심혈관 건강","뇌 발달/성장발육","피부/모질 건강","관절/근골격 발달","장/소화기 건강","눈물감소"))
qu_text.push(new Array("반려견","사료","선호하는 주요 단백질 원료를 선택해주세요.","닭고기","연어","오리"))

qu_text.push(new Array("반려견","배변용품","현재 반려견의 나이를 선택해주세요.","3개월~11개월","12개월~7살","8살~"))
qu_text.push(new Array("반려견","배변용품","반려견의 몸무게를 선택해주세요","~4kg 이하","~6kg 이하","6kg 이상"))
qu_text.push(new Array("반려견","배변용품","현재 양육중인 반려견의 수를 선택해주세요.","1마리","2마리","3마리 이상"))
qu_text.push(new Array("반려견","배변용품","현재 반려견의 배변생활 관련 고민을 선택해주세요.","배변훈련","배변냄새","발도장(흡수력)"))

qu_text.push(new Array("반려견","샴푸","현재 반려견의 나이를 선택해주세요.","3개월~11개월","12개월~7살","8살~"))
qu_text.push(new Array("반려견","샴푸","다음 중 해당되는 반려견의 모질을 선택해주세요.","긴털의 장모종","짧은 털의 단모종","꼬불꼬불 권모종","빽빽한 이중모종"))
qu_text.push(new Array("반려견","샴푸","다음 중 반려견의 피부 고민을 선택해주세요.","각질/비듬","건조하고 푸석함","예민한 피부","흰 털의 변색","강한 체취"))
qu_text.push(new Array("반려견","샴푸","다음 중 선호하는 샴푸/컨디셔너 향을 선택해주세요.","산뜻한 과일향","따뜻한 파우더향"))

qu_text.push(new Array("반려견","브러쉬","다음 중 해당되는 반려견의 견종을 선택해주세요.","초소형견","소형견","중형견","대형견","초대형견"))
qu_text.push(new Array("반려견","브러쉬","다음 중 해당되는 반려견의 모질을 선택해주세요.","긴털의 장모종","짧은 털의 단모종","꼬불꼬불 권모종","빽빽한 이중모종"))
qu_text.push(new Array("반려견","브러쉬","다음 중 반려견의 털 관련 고민을 선택해주세요.","엉킨 털","털 빠짐","윤기 부족","볼륨 부족","죽은 털"))



qu_text.push(new Array("반려묘","사료","현재 반려묘의 나이를 선택해주세요.","3개월~11개월","12개월~7살","8살~"))
qu_text.push(new Array("반려묘","사료","반려묘의 현재 건강상 가장 고민인 것을 선택해주세요.","과체중/비만","눈물자국","변비/설사","피부트러블","영양부족"))
qu_text.push(new Array("반려묘","사료","원하시는 사료의 효능 효과를 선택해주세요.","다이어트","뇌 발달/성장발육","피부/모질 건강","장/소화기 건강","눈물감소"))

qu_text.push(new Array("반려묘","샴푸","현재 반려묘의 나이를 선택해주세요.","3개월~11개월","12개월~7살","8살~"))
qu_text.push(new Array("반려묘","샴푸","다음 중 해당되는 반려묘의 모질을 선택해주세요.","긴털의 장모","짧은 털의 단모","빽빽한 중모"))
qu_text.push(new Array("반려묘","샴푸","다음 중 반려묘의 피부 고민을 선택해주세요.","각질/비듬","건조하고 푸석함","예민한 피부","흰 털의 변색","강한 체취"))
qu_text.push(new Array("반려묘","샴푸","다음 중 선호하는 샴푸/컨디셔너 향을 선택해주세요.","산뜻한 과일향","따뜻한 파우더향"))

qu_text.push(new Array("반려묘","브러쉬","다음 중 해당되는 반려묘의 몸무게를 선택해주세요.","~3kg","~6kg","6kg 이상"))
qu_text.push(new Array("반려묘","브러쉬","다음 중 해당되는 반려묘의 모질을 선택해주세요.","긴털의 장모","짧은 털의 단모","빽빽한 중모"))
qu_text.push(new Array("반려묘","브러쉬","다음 중 반려견의 털 관련 고민을 선택해주세요.","엉킨 털","털 빠짐","윤기 부족","볼륨 부족","죽은 털"))

qu_text.push(new Array("반려묘","모래","고양이모래 구매시 가장 중요하게 생각하시는 부분을 선택해주세요","응고력","먼지날림","탈취력"))
qu_text.push(new Array("반려묘","모래","선호하시는 모래 용량을 선택해주세요","7.5kg 이하","8kg~15kg","16kg~30kg"))







qu = new Array() //qu_text 넘버링 (구분, 카테고리, 질문번호, 보기,보기,보기...)
qu.push(new Array("1","1","1","1a","1b","1c"))
qu.push(new Array("1","1","2","2a|y","2b|y","2c|y","2d|y","2e|y","2f|y"))
qu.push(new Array("1","1","3","3a","3b","3c","3d","3e","3f","3g"))
qu.push(new Array("1","1","4","4a","4b","4c"))

qu.push(new Array("1","2","1","1a","1b","1c"))
qu.push(new Array("1","2","2","2a","2b","2c"))
qu.push(new Array("1","2","3","3a","3b","3c"))
qu.push(new Array("1","2","4","4a|y","4b|y","4c|y","4d|y"))

qu.push(new Array("1","3","1","1a","1b","1c"))
qu.push(new Array("1","3","2","2a|y","2b|y","2c|y","2d|y"))
qu.push(new Array("1","3","3","3a","3b","3c","3d","3e"))
qu.push(new Array("1","3","4","4a","4b"))

qu.push(new Array("1","4","1","1a","1b","1c","1d","1e"))
qu.push(new Array("1","4","2","2a|y","2b|y","2c|y","2d|y"))
qu.push(new Array("1","4","3","3a","3b","3c","3d","3e"))




qu.push(new Array("2","1","1","1a","1b","1c"))
qu.push(new Array("2","1","2","2a|y","2b|y","2c|y","2d|y","2e|y"))
qu.push(new Array("2","1","3","3a","3b","3c","3d","3e"))

qu.push(new Array("2","3","1","1a","1b","1c"))
qu.push(new Array("2","3","2","2a|y","2b|y","2c|y"))
qu.push(new Array("2","3","3","3a","3b","3c","3d","3e"))
qu.push(new Array("2","3","4","4a","4b"))

qu.push(new Array("2","4","1","1a","1b","1c"))
qu.push(new Array("2","4","2","2a|y","2b|y","2c|y"))
qu.push(new Array("2","4","3","3a","3b","3c","3d","3e"))

qu.push(new Array("2","5","1","1a|y","1b|y","1c|y"))
qu.push(new Array("2","5","2","2a","2b","2c"))




qu_product = new Array() //질문,보기 팩키지 매칭 (구분, 카테고리, 팩키지, 보기, 보기, 보기...)

qu_product.push(new Array("1","1","1589","1a|1b|1c","2a|2b|2d|2e|2f","3a|3b|3c|3d|3e|3f|3g","4a"))
qu_product.push(new Array("1","1","1586","1a|1b|1c","2a|2b|2d|2e|2f","3a|3b|3c|3d|3e|3f|3g","4b"))
qu_product.push(new Array("1","1","1580","1a|1b|1c","2a|2b|2c|2e|2f","3a|3c|3d|3e|3f|3g","4b"))
qu_product.push(new Array("1","1","1582","1a|1b|1c","2a|2b|2c|2e|2f","3a|3c|3d|3e|3f|3g","4a"))
qu_product.push(new Array("1","1","957","1b|1c","2d|2f","3e|3f","4a"))
qu_product.push(new Array("1","1","955","1b|1c","2a|2f","3a|3e","4a"))
qu_product.push(new Array("1","1","953","1a","2b|2d","3c|3f","4a"))
qu_product.push(new Array("1","1","1069","1b","2b","3c|3e|3f","4a"))
qu_product.push(new Array("1","1","1371","1a|1b|1c","2a|2b|2d|2e|2f","3d|3e|3f","4a"))
qu_product.push(new Array("1","1","1370","1a|1b|1c","2a|2b|2d|2e|2f","3c|3d|3e|3f","4a"))
qu_product.push(new Array("1","1","1500","1a|1b|1c","2b|2d|2e|2f","3c|3d|3e|3f|3g","4a"))
qu_product.push(new Array("1","1","1498","1a|1b|1c","2b|2c|2d|2e|2f","3c|3d|3e|3f|3g","4b"))
qu_product.push(new Array("1","1","1496","1a|1b|1c","2b|2c|2d|2e|2f","3c|3d|3e|3f|3g","4c"))

qu_product.push(new Array("1","2","918","1a|1b|1c","2a","3a|3b","4b|4c"))
qu_product.push(new Array("1","2","921","1a|1b|1c","2a|2b|2c","3a|3b|3c","4b|4c"))
qu_product.push(new Array("1","2","914","1a|1b|1c","2a|2b","3a|3b|3c","4a|4d"))
qu_product.push(new Array("1","2","915","1a|1b|1c","2b|2c","3a|3b|3c","4a|4d"))
qu_product.push(new Array("1","2","1146","1a|1b|1c","2b|2c","3a|3b|3c","4b|4c"))
qu_product.push(new Array("1","2","1490","1a|1b|1c","2b|2c","3a|3b|3c","4b|4c"))
qu_product.push(new Array("1","2","1376","1a|1b|1c","2a|2b|2c","3a|3b|3c","4c"))
/*qu_product.push(new Array("1","2","1127","1a|1b|1c","2a|2b|2c","3a|3b|3c","4c|4d"))
qu_product.push(new Array("1","2","1126","1a|1b|1c","2a|2b|2c","3a|3b|3c","4c|4d"))*/

qu_product.push(new Array("1","3","880","1a|1b|1c","2a|2b|2c|2d","3a|3b|3c","4a"))
qu_product.push(new Array("1","3","879","1a|1b|1c","2a|2b|2c|2d","3d","4a"))
qu_product.push(new Array("1","3","877","1a|1b|1c","2a|2b|2c|2d","3e","4a"))
qu_product.push(new Array("1","3","1062","1a|1b|1c","2a|2b|2c|2d","3d","4b"))
qu_product.push(new Array("1","3","1064","1a|1b|1c","2a|2b|2c|2d","3a|3c","4b"))
qu_product.push(new Array("1","3","1068","1a|1b|1c","2a|2b|2c|2d","3b","4b"))
qu_product.push(new Array("1","3","1067","1a|1b|1c","2a|2b|2c|2d","3d","4b"))
qu_product.push(new Array("1","3","1066","1a|1b|1c","2a|2b|2c|2d","3a|3c","4b"))
qu_product.push(new Array("1","3","1065","1a|1b|1c","2a|2b|2c|2d","3e","4b"))

qu_product.push(new Array("1","4","908","1d","2a|2b|2c|2d","3a|3b|3e"))
qu_product.push(new Array("1","4","909","1a|1b","2a|2b|2c|2d","3a|3b|3e"))
qu_product.push(new Array("1","4","911","1b|1c","2a|2b|2c|2d","3a|3b|3e"))
qu_product.push(new Array("1","4","912","1a","2a|2b|2c|2d","3a|3b|3e"))
qu_product.push(new Array("1","4","1036","1d|1e","2a|2b|2c|2d","3a|3b|3e"))
qu_product.push(new Array("1","4","1082","1e","2a|2b|2c|2d","3a|3b|3e"))
qu_product.push(new Array("1","4","1035","1a|1b","2b|2c|2d","3a|3d"))
qu_product.push(new Array("1","4","1034","1c|1d|1e","2a|2c|2d","3a|3c|3d"))
qu_product.push(new Array("1","4","935","1a|1b|1c","2a|2c|2d","3a|3c|3d"))
qu_product.push(new Array("1","4","933","1a|1b|1c|1d|1e","2b|2c|2d","3b|3c|3d"))
qu_product.push(new Array("1","4","1319","1a|1b|1c","2a|2c|2d","3c|3d"))
qu_product.push(new Array("1","4","1320","1a|1b|1c","2a|2c|2d","3c|3d"))
qu_product.push(new Array("1","4","1321","1a|1b|1c","2a|2c|2d","3c|3d"))
qu_product.push(new Array("1","4","1471","1a|1b|1c","2a|2c|2d","3c|3d"))





qu_product.push(new Array("2","1","1075","1a","2c|2e","3b|3d"))
qu_product.push(new Array("2","1","1073","1b|1c","2a|2c","3a|3d|3e"))
qu_product.push(new Array("2","1","1071","1a|1b|1c","2a|2b|2c|2d|2e","3a|3b|3c|3d|3e"))
qu_product.push(new Array("2","1","1494","1a|1b|1c","2a|2b|2c|2d|2e","3a|3b|3c|3d|3e"))

qu_product.push(new Array("2","3","880","1a|1b|1c","2a|2b|2c","3a|3b|3c","4a"))
qu_product.push(new Array("2","3","879","1a|1b|1c","2a|2b|2c","3d","4a"))
qu_product.push(new Array("2","3","877","1a|1b|1c","2a|2b|2c","3e","4a"))
qu_product.push(new Array("2","3","1062","1a|1b|1c","2a|2b|2c","3d","4b"))
qu_product.push(new Array("2","3","1064","1a|1b|1c","2a|2b|2c","3a|3c","4b"))
qu_product.push(new Array("2","3","1068","1a|1b|1c","2a|2b|2c","3b","4b"))
qu_product.push(new Array("2","3","1067","1a|1b|1c","2a|2b|2c","3d","4b"))
qu_product.push(new Array("2","3","1066","1a|1b|1c","2a|2b|2c","3a|3c","4b"))
qu_product.push(new Array("2","3","1065","1a|1b|1c","2a|2b|2c","3e","4b"))

qu_product.push(new Array("2","4","910","1a|1b","2a|2b|2c","3a|3b|3e"))
qu_product.push(new Array("2","4","1081","1c","2a|2b|2c","3a|3b|3e"))
qu_product.push(new Array("2","4","1035","1a|1b|1c","2a|2b|2c","3a|3d"))
qu_product.push(new Array("2","4","1034","1c","2a|2d","3a|3c|3d"))
qu_product.push(new Array("2","4","935","1a|1b","2a|2d","3a|3c|3d"))
qu_product.push(new Array("2","4","933","1a|1b|1c","2b|2c","3b|3c|3d"))
qu_product.push(new Array("2","4","1319","1a|1b|1c","2a|2c","3c|3d"))
qu_product.push(new Array("2","4","1320","1a|1b|1c","2a|2c","3c|3d"))
qu_product.push(new Array("2","4","1321","1a|1b|1c","2a|2c","3c|3d"))
qu_product.push(new Array("2","4","1471","1a|1b|1c","2a|2c","3c|3d"))

qu_product.push(new Array("2","5","1295","1a|1b","2a"))
qu_product.push(new Array("2","5","1297","1a|1b","2b"))
qu_product.push(new Array("2","5","1296","1a|1b","2c"))
qu_product.push(new Array("2","5","1513","1b|1c","2a"))
qu_product.push(new Array("2","5","1514","1b|1c","2b"))
qu_product.push(new Array("2","5","1515","1b|1c","2c"))
qu_product.push(new Array("2","5","1526","1a|1b|1c","2c"))