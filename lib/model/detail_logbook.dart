class DetailLogbook {
    DetailLogbook({
        this.id,
        this.userId,
        this.unitId,
        this.datet,
        this.nameUnit,
        this.nameOperator,
        this.rhStart,
        this.rhStop,
        this.timeStart,
        this.timeStop,
        this.description,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
    });

    String? id;
    String? userId;
    String? unitId;
    String? datet;
    String? nameUnit;
    String? nameOperator;
    String? rhStart;
    String? rhStop;
    String? timeStart;
    String? timeStop;
    String? description;
    String? createdAt;
    String? updatedAt;
    String? deletedAt;

    factory DetailLogbook.fromJson(Map<String, dynamic> json) => DetailLogbook(
        id: json["id"],
        userId: json["user_id"],
        unitId: json["unit_id"],
        datet: json["datet"],
        nameUnit: json["name_unit"],
        nameOperator: json["name_operator"],
        rhStart: json["rh_start"],
        rhStop: json["rh_stop"],
        timeStart: json["time_start"],
        timeStop: json["time_stop"],
        description: json["description"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "unit_id": unitId,
        "datet": datet,
        "name_unit": nameUnit,
        "name_operator": nameOperator,
        "rh_start": rhStart,
        "rh_stop": rhStop,
        "time_start": timeStart,
        "time_stop": timeStop,
        "description": description,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
    };
}
