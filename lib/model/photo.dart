class Photo{
  Photo({
    this.id,
    this.namePhoto,
    this.photos,
    this.description,
  });
  final String id;
  final String namePhoto;
  final String description;
  final List<String> photos; 
}
var kPhotos = <Photo>[
  Photo(
    namePhoto: 'Video 1',
    description: 'Nghệ thuật chân chính là đưa người ta hướng đến cái thiện',
  ),
  Photo(
    namePhoto: 'Video 2',
    description: 'Nghệ thuật chân chính là đưa người ta hướng đến cái thiện',
  ),
  Photo(
    namePhoto: 'Video 3: Ngạo tuyết xuân mai',
    description: 'Nghệ thuật chân chính là đưa người ta hướng đến cái thiện',
  ),
  Photo(
    namePhoto: 'Video 4: Cánh chim hoà bình vượt bão tố!',
    description: 'Nghệ thuật chân chính là đưa người ta hướng đến cái thiện',
  ),
  Photo(
    namePhoto: 'Những cánh sen hoà bình',
    description: 'Nghệ thuật chân chính là đưa người ta hướng đến cái thiện',
  ),
  Photo(
    namePhoto: 'Lớp học Chân-Thiện-Nhẫn',
    description: 'Nghệ thuật chân chính là đưa người ta hướng đến cái thiện',
  ),
  Photo(
    namePhoto: 'Hoa mai nở',
    description: 'Nghệ thuật chân chính là đưa người ta hướng đến cái thiện',
  ),
];