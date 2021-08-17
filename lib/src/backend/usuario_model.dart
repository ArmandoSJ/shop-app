import 'dart:convert';

Usuario usuarioFromJson(String str) => Usuario.fromJson(json.decode(str));

String usuarioToJson(Usuario data) => json.encode(data.toJson());

String sessionToJson(Usuario data) => json.encode(data.toJsonSesion());

class Usuario {

    String? vStatus;
    String? vUserId;
    String? vEmail;
    String? vName;
    String? vPassword;
    String? vPwd2;

    Usuario({
        this.vStatus,
        this.vUserId,
        this.vEmail,
        this.vName,
        this.vPassword,
    });


    factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        vStatus  : json["vStatus"],
        vUserId  : json["vUserID"],
        vEmail   : json["vEmail"],
        vName    : json["vName"],
        vPassword    : json["vPassword"],
    );

    Map<String, dynamic> toJson() => {
        "vStatus"  : vStatus,
        "vUserID"  : vUserId,
        "vEmail"   : vEmail,
        "vName"    : vName,
        "vPassword"    : vPassword,
    };

    Usuario.fromJsonList(Map<String, dynamic> json) {
          vStatus = json['VALIDAUSUARIO'];
          vUserId = json['USUARIOID'];
          vEmail = json['EMAIL'];
          vName = json['NOMBRE'];
    }

    Map<String, dynamic> toJsonSesion() => {
        "usr"  : vUserId,
        "pswd"    : vPassword,
    };
}
