class User {
    User({
        this.idUser,
        this.name,
        this.email,
        this.password,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
    });

    String? idUser;
    String? name;
    String? email;
    String? password;
    String? createdAt;
    String? updatedAt;
    String? deletedAt;

    factory User.fromJson(Map<String, dynamic> json) => User(
        idUser: json["id_user"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id_user": idUser,
        "name": name,
        "email": email,
        "password": password,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
    };
}