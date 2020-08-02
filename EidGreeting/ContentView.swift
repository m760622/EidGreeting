// https://github.com/m760622/EidGreeting
//  ContentView.swift
//  EidGreeting
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-08-02.
// https://github.com/m760622
//https://github.com/airbnb/lottie-ios.git

import SwiftUI
import Lottie

struct ContentView: View {
    
    var body: some View {
        ZStack{
            Image("EidMecca")
                .resizable()
            LottieView(filename: "colorfulConfetti", loopMode: .loop, animationSpeed: 2.5)
            VStack{
                LottieView(filename: "eidMubarakEnglish")
                    .frame(height: 250)
                    .offset( y: 20.0)
                LottieView(filename: "eidMubarakArabic")
                    .frame(height: 300)
                    .offset( y: -50.0)
                Spacer()
                VStack{
                    Text("Mohammed R. Abunada - محمد رمضان أبو ندى")
                        .font(.headline)
                        .foregroundColor(.init(red: 242/255, green: 228/255, blue: 145/255))
                    Text("Eid AlAdha 2020 - 1441 عيد الأضحى المبارك")
                        .foregroundColor(.white)
                        .font(.body)
                        .padding()
                }//VStack
            }//VStack
        }//ZStack
        .edgesIgnoringSafeArea(.all)
    }//body
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LottieView: UIViewRepresentable {
    let filename: String
    var loopMode: LottieLoopMode = .playOnce
    var animationSpeed: CGFloat = 0.5
    let animationView = AnimationView()
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let animation = Animation.named(filename)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.animationSpeed = animationSpeed
        animationView.play()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        let view = UIView()
        view.addSubview(animationView)
        [animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
         animationView.widthAnchor.constraint(equalTo: view.widthAnchor)].forEach {
            $0.isActive = true
         }
        return view
    }//makeUIView
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}//LottieView
