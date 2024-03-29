//
//  VideoPlayerView.swift
//  Atinarae
//
//  Created by HyunwooPark on 2023/05/02.
//

import SwiftUI
import AVKit
struct VideoPlayerViewModel: View {
    let player: AVPlayer

    init?(forResource resource: String, withExtension ext: String) {
        guard let videoURL = Bundle.main.url(forResource: resource, withExtension: ext) else { return nil }
        let playerItem = AVPlayerItem(url: videoURL)
        self.player = AVPlayer(playerItem: playerItem)
    }
    init?(videoUrl url: String){
        guard let videoURL = URL(string: url) else {return nil}
        let playerItem = AVPlayerItem(url: videoURL)
        self.player = AVPlayer(playerItem: playerItem)
    }

    var body: some View {
        VideoPlayer(player: player)
            .frame(width: 400, height: 300, alignment: .center)
            .onAppear{
                player.play()
            }
        
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            VideoPlayerViewModel(forResource: "sampleVideo", withExtension: "mp4")
            VideoPlayerViewModel(videoUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4")
        }
    }
}
