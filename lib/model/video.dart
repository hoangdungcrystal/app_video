class Video{
  Video({
    this.id,
    this.nameVideo,
    this.thumbnailLink,
    this.viewLink,
    this.embedLink,
    this.downloadUrl
  });
  final String id;
  final String nameVideo;
  final String thumbnailLink;
  final String viewLink;
  final String embedLink;
  final String downloadUrl;
}
var kVideos = <Video>[
  Video(
    nameVideo: 'Video 1',
    thumbnailLink: "https://img.youtube.com/vi/s_lbjEuC4d4/mqdefault.jpg"
  ),
  Video(
    nameVideo: 'Video 2',
    thumbnailLink: "https://img.youtube.com/vi/s_lbjEuC4d4/mqdefault.jpg"
  ),
  Video(
    nameVideo: 'Video 3: Ngạo tuyết xuân mai',
    thumbnailLink: "https://img.youtube.com/vi/s_lbjEuC4d4/mqdefault.jpg"
  ),
  Video(
    nameVideo: 'Video 4: Cánh chim hoà bình vượt bão tố!',
    thumbnailLink: "https://img.youtube.com/vi/s_lbjEuC4d4/mqdefault.jpg"
  ),
  Video(
    nameVideo: 'Những cánh sen hoà bình',
    thumbnailLink: "https://img.youtube.com/vi/s_lbjEuC4d4/mqdefault.jpg"
  ),
  Video(
    nameVideo: 'Lớp học Chân-Thiện-Nhẫn',
    thumbnailLink: "https://img.youtube.com/vi/s_lbjEuC4d4/mqdefault.jpg"
  ),
  Video(
    nameVideo: 'Hoa mai nở',
    thumbnailLink: "https://img.youtube.com/vi/s_lbjEuC4d4/mqdefault.jpg"
  ),
];