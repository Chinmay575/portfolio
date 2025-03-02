class About {
  String? sId;
  int? iV;
  String? bio;
  String? contactEmail;
  String? createdAt;
  String? location;
  String? name;
  String? profilePicture;

  About({
    this.sId,
    this.iV,
    this.bio,
    this.contactEmail,
    this.createdAt,
    this.location,
    this.name,
    this.profilePicture,
  });

  About.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    iV = json['__v'];
    bio = json['bio'];
    contactEmail = json['contactEmail'];
    createdAt = json['createdAt'];
    location = json['location'];
    name = json['name'];
    profilePicture = json['profilePicture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['__v'] = iV;
    data['bio'] = bio;
    data['contactEmail'] = contactEmail;
    data['createdAt'] = createdAt;
    data['location'] = location;
    data['name'] = name;
    data['profilePicture'] = profilePicture;
    return data;
  }
}
