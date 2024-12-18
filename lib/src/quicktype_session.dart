import 'dart:convert';

//Generated with https://app.quicktype.io/ from assets/login_response.json
class Session {
  final String? odataMetadata;
  final String? sessionId;
  final String? version;
  final int? sessionTimeout;

  Session({
    this.odataMetadata = '',
    this.sessionId = '',
    this.version = '',
    this.sessionTimeout = 0,
  });

  factory Session.fromJson(String str) => Session.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Session.fromMap(Map<String, dynamic> json) => Session(
        odataMetadata: json['odata.metadata'] as String?,
        sessionId: json['SessionId'] as String?,
        version: json['Version'] as String?,
        sessionTimeout: json['SessionTimeout'] as int?,
      );
  Map<String, dynamic> toMap() => {
        'odata.metadata': odataMetadata,
        'SessionId': sessionId,
        'Version': version,
        'SessionTimeout': sessionTimeout,
      };
}
