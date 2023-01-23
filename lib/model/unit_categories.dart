class UnitCategories {
    UnitCategories({
        this.id,
        this.nameUnit,
        this.typeUnit,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
    });

    String? id;
    String? nameUnit;
    String? typeUnit;
    String? createdAt;
    String? updatedAt;
    String? deletedAt;

    factory UnitCategories.fromJson(Map<String, dynamic> json) => UnitCategories(
        id: json["id"],
        nameUnit: json["name_unit"],
        typeUnit: json["type_unit"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name_unit": nameUnit,
        "type_unit": typeUnit,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
    };
}