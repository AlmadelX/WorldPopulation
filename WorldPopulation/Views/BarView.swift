import SwiftUI

struct BarView: View {
    let startGradientColor = Color(R: 94, G: 255, B: 139)
    let endGradientColor = Color(R: 134, G: 255, B: 226)
    
    var body: some View {
        GeometryReader { metrics in
            RoundedRectangle(cornerRadius: 5.0)
                .fill(LinearGradient(gradient: Gradient(colors: [startGradientColor, endGradientColor]), startPoint: .leading, endPoint: .trailing))
        }
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
    }
}
