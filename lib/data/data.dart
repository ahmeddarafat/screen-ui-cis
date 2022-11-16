class ProfileModel{
  final String photo;
  final String name;
  final String specialty;
  final int review;

  ProfileModel(this.photo, this.name, this.specialty, this.review);
}

class AppAssets{
static const String doctor1 ="assets/person1.jpg";
static const String doctor2 ="assets/doctor2.jpg";
static const String doctor3 ="assets/doctor3.jpg";
static const String heartBeat ="assets/heart-beat.png";
}


List<ProfileModel> doctors=[
ProfileModel(AppAssets.doctor1, "Dr. Ahmed Arafat", "Dentist", 310),
ProfileModel(AppAssets.doctor2, "Dr. Joseph Brew", "Dermatologists", 22),
ProfileModel(AppAssets.doctor3, "Dr. Terry Jew", "Neurologists", 234),
ProfileModel(AppAssets.doctor1, "Dr. Halylie Siphron", "Dentist", 123),
ProfileModel(AppAssets.doctor2, "Dr. Croey Aminoff", "Neurologists", 322),
ProfileModel(AppAssets.doctor3, "Dr. Dinal Ramy", "Dentist", 100),
ProfileModel(AppAssets.doctor1, "Dr. Halylie Siphron", "Dentist", 123),
ProfileModel(AppAssets.doctor2, "Dr. Croey Aminoff", "Neurologists", 322),
ProfileModel(AppAssets.doctor3, "Dr. Dinal Ramy", "Dentist", 100),
];