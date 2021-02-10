
import SwiftUI

struct ContentView: View {
    var model = Dish.all()
    //9.
    @State private var IsSpicy = false
    
    var body: some View {
        //1.
        List {
            //10  .constant(true) -> $IsSpicy
            Toggle(isOn: $IsSpicy) {
                Text("매운맛")
                    .font(.title)
            }

            //2.
            //11. filter 추가
            ForEach(model.filter { $0.isSpicy == self.IsSpicy}) { dish in
                //3.
                HStack {
                    //4.
                    Image(dish.imageURL)
                        .resizable()
                        .frame(width: 100, height: 100)
                    //5.
                    Text(dish.name)
                        .padding(.leading, 10)
                        .font(.title)
                        .lineLimit(nil)
                    //7.
                    Spacer()
                    
                    //8.만약 음식이 맵다면 아래 이미지 표시
                    if(dish.isSpicy) {
                        //6.
                        Image("spicy-icon")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
