class HistoryLogbook {
    HistoryLogbook({
        this.id,
        this.idHistory,
        this.date,
        this.nameUnit,
        this.rhStart,
        this.rhStop,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
    });

    String? id;
    String? idHistory;
    String? date;
    String? nameUnit;
    String? rhStart;
    String? rhStop;
    String? createdAt;
    String? updatedAt;
    String? deletedAt;

    factory HistoryLogbook.fromJson(Map<String, dynamic> json) => HistoryLogbook(
        id: json["id"],
        idHistory: json["id_history"],
        date: json["date"],
        nameUnit: json["name_unit"],
        rhStart: json["rh_start"],
        rhStop: json["rh_stop"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "id_history": idHistory,
        "date": date,
        "name_unit": nameUnit,
        "rh_start": rhStart,
        "rh_stop": rhStop,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
    };
}