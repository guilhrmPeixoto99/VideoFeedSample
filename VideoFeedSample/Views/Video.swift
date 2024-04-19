import SwiftUI
import AVKit

struct Video: View {

    private var videoPlayer: AVQueuePlayer
    private var videoPlayerLooper: AVPlayerLooper
    private var audioPlayer: AVQueuePlayer
    private var audioPlayerLooper: AVPlayerLooper

    init(videoURL: URL, audioURL: URL) {
        let videoAsset = AVAsset(url: videoURL)
        let videoItem = AVPlayerItem(asset: videoAsset)

        let audioAsset = AVAsset(url: audioURL)
        let audioItem = AVPlayerItem(asset: audioAsset)

        videoPlayer = AVQueuePlayer(playerItem: videoItem)
        videoPlayerLooper = AVPlayerLooper(player: videoPlayer, templateItem: videoItem)

        audioPlayer = AVQueuePlayer(playerItem: audioItem)
        audioPlayerLooper = AVPlayerLooper(player: audioPlayer, templateItem: audioItem)
    }

    var body: some View {
        VideoPlayer(player: videoPlayer)
            .aspectRatio(contentMode: .fill)
            .onAppear() {
                videoPlayer.play()
                audioPlayer.play()
            }
            .onDisappear {
                videoPlayer.pause()
                audioPlayer.pause()
            }
            .ignoresSafeArea()
    }
}
