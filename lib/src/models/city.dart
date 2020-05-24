// To parse this JSON data, do
//
//     final city = cityFromJson(jsonString);

import 'dart:convert';

City cityFromJson(String str) => City.fromJson(json.decode(str));

String cityToJson(City data) => json.encode(data.toJson());

class City {
    List<LocationSuggestion> locationSuggestions;
    String status;
    int hasMore;
    int hasTotal;
    bool userHasAddresses;

    City({
        this.locationSuggestions,
        this.status,
        this.hasMore,
        this.hasTotal,
        this.userHasAddresses,
    });

    factory City.fromJson(Map<String, dynamic> json) => City(
        locationSuggestions: List<LocationSuggestion>.from(json['location_suggestions'].map((x) => LocationSuggestion.fromJson(x))),
        status: json['status'],
        hasMore: json['has_more'],
        hasTotal: json['has_total'],
        userHasAddresses: json['user_has_addresses'],
    );

    Map<String, dynamic> toJson() => {
        'location_suggestions': List<dynamic>.from(locationSuggestions.map((x) => x.toJson())),
        'status': status,
        'has_more': hasMore,
        'has_total': hasTotal,
        'user_has_addresses': userHasAddresses,
    };
}

class LocationSuggestion {
    int id;
    String name;
    int countryId;
    String countryName;
    String countryFlagUrl;
    int shouldExperimentWith;
    int hasGoOutTab;
    int discoveryEnabled;
    int hasNewAdFormat;
    int isState;
    int stateId;
    String stateName;
    String stateCode;

    LocationSuggestion({
        this.id,
        this.name,
        this.countryId,
        this.countryName,
        this.countryFlagUrl,
        this.shouldExperimentWith,
        this.hasGoOutTab,
        this.discoveryEnabled,
        this.hasNewAdFormat,
        this.isState,
        this.stateId,
        this.stateName,
        this.stateCode,
    });

    factory LocationSuggestion.fromJson(Map<String, dynamic> json) => LocationSuggestion(
        id: json['id'],
        name: json['name'],
        countryId: json['country_id'],
        countryName: json['country_name'],
        countryFlagUrl: json['country_flag_url'],
        shouldExperimentWith: json['should_experiment_with'],
        hasGoOutTab: json['has_go_out_tab'],
        discoveryEnabled: json['discovery_enabled'],
        hasNewAdFormat: json['has_new_ad_format'],
        isState: json['is_state'],
        stateId: json['state_id'],
        stateName: json['state_name'],
        stateCode: json['state_code'],
    );

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'country_id': countryId,
        'country_name': countryName,
        'country_flag_url': countryFlagUrl,
        'should_experiment_with': shouldExperimentWith,
        'has_go_out_tab': hasGoOutTab,
        'discovery_enabled': discoveryEnabled,
        'has_new_ad_format': hasNewAdFormat,
        'is_state': isState,
        'state_id': stateId,
        'state_name': stateName,
        'state_code': stateCode,
    };
}
