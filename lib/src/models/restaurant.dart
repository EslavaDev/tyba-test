// To parse this JSON data, do
//
//     final restaurant = restaurantFromJson(jsonString);

import 'dart:convert';

Restaurant restaurantFromJson(String str) => Restaurant.fromJson(json.decode(str));

String restaurantToJson(Restaurant data) => json.encode(data.toJson());

class Restaurant {
    int resultsFound;
    int resultsStart;
    int resultsShown;
    List<RestaurantElement> restaurants;

    Restaurant({
        this.resultsFound,
        this.resultsStart,
        this.resultsShown,
        this.restaurants,
    });

    factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        resultsFound: json['results_found'],
        resultsStart: json['results_start'],
        resultsShown: json['results_shown'],
        restaurants: List<RestaurantElement>.from(json['restaurants'].map((x) => RestaurantElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        'results_found': resultsFound,
        'results_start': resultsStart,
        'results_shown': resultsShown,
        'restaurants': List<dynamic>.from(restaurants.map((x) => x.toJson())),
    };
}

class RestaurantElement {
    RestaurantRestaurant restaurant;

    RestaurantElement({
        this.restaurant,
    });

    factory RestaurantElement.fromJson(Map<String, dynamic> json) => RestaurantElement(
        restaurant: RestaurantRestaurant.fromJson(json['restaurant']),
    );

    Map<String, dynamic> toJson() => {
        'restaurant': restaurant.toJson(),
    };
}

class RestaurantRestaurant {
    R r;
    Apikey apikey;
    String id;
    String name;
    String url;
    Location location;
    int switchToOrderMenu;
    String cuisines;
    String timings;
    int averageCostForTwo;
    int priceRange;
    Currency currency;
    List<String> highlights;
    List<dynamic> offers;
    int opentableSupport;
    int isZomatoBookRes;
    MezzoProvider mezzoProvider;
    int isBookFormWebView;
    String bookFormWebViewUrl;
    String bookAgainUrl;
    String thumb;
    UserRating userRating;
    int allReviewsCount;
    String photosUrl;
    int photoCount;
    List<PhotoElement> photos;
    String menuUrl;
    String featuredImage;
    int hasOnlineDelivery;
    int isDeliveringNow;
    String storeType;
    bool includeBogoOffers;
    String deeplink;
    int isTableReservationSupported;
    int hasTableBooking;
    String eventsUrl;
    String phoneNumbers;
    AllReviews allReviews;
    List<String> establishment;
    List<dynamic> establishmentTypes;
    String medioProvider;
    String bookUrl;

    RestaurantRestaurant({
        this.r,
        this.apikey,
        this.id,
        this.name,
        this.url,
        this.location,
        this.switchToOrderMenu,
        this.cuisines,
        this.timings,
        this.averageCostForTwo,
        this.priceRange,
        this.currency,
        this.highlights,
        this.offers,
        this.opentableSupport,
        this.isZomatoBookRes,
        this.mezzoProvider,
        this.isBookFormWebView,
        this.bookFormWebViewUrl,
        this.bookAgainUrl,
        this.thumb,
        this.userRating,
        this.allReviewsCount,
        this.photosUrl,
        this.photoCount,
        this.photos,
        this.menuUrl,
        this.featuredImage,
        this.hasOnlineDelivery,
        this.isDeliveringNow,
        this.storeType,
        this.includeBogoOffers,
        this.deeplink,
        this.isTableReservationSupported,
        this.hasTableBooking,
        this.eventsUrl,
        this.phoneNumbers,
        this.allReviews,
        this.establishment,
        this.establishmentTypes,
        this.medioProvider,
        this.bookUrl,
    });

    factory RestaurantRestaurant.fromJson(Map<String, dynamic> json) => RestaurantRestaurant(
        r: R.fromJson(json['R']),
        apikey: apikeyValues.map[json['apikey']],
        id: json['id'],
        name: json['name'],
        url: json['url'],
        location: Location.fromJson(json['location']),
        switchToOrderMenu: json['switch_to_order_menu'],
        cuisines: json['cuisines'],
        timings: json['timings'],
        averageCostForTwo: json['average_cost_for_two'],
        priceRange: json['price_range'],
        currency: currencyValues.map[json['currency']],
        highlights: List<String>.from(json['highlights'].map((x) => x)),
        offers: List<dynamic>.from(json['offers'].map((x) => x)),
        opentableSupport: json['opentable_support'],
        isZomatoBookRes: json['is_zomato_book_res'],
        mezzoProvider: mezzoProviderValues.map[json['mezzo_provider']],
        isBookFormWebView: json['is_book_form_web_view'],
        bookFormWebViewUrl: json['book_form_web_view_url'],
        bookAgainUrl: json['book_again_url'] == null ? null : json['book_again_url'],
        thumb: json['thumb'],
        userRating: UserRating.fromJson(json['user_rating']),
        allReviewsCount: json['all_reviews_count'],
        photosUrl: json['photos_url'],
        photoCount: json['photo_count'],
        photos: List<PhotoElement>.from(json['photos'].map((x) => PhotoElement.fromJson(x))),
        menuUrl: json['menu_url'],
        featuredImage: json['featured_image'],
        hasOnlineDelivery: json['has_online_delivery'],
        isDeliveringNow: json['is_delivering_now'],
        storeType: json['store_type'],
        includeBogoOffers: json['include_bogo_offers'],
        deeplink: json['deeplink'],
        isTableReservationSupported: json['is_table_reservation_supported'],
        hasTableBooking: json['has_table_booking'],
        eventsUrl: json['events_url'],
        phoneNumbers: json['phone_numbers'],
        allReviews: AllReviews.fromJson(json['all_reviews']),
        establishment: List<String>.from(json['establishment'].map((x) => x)),
        establishmentTypes: List<dynamic>.from(json['establishment_types'].map((x) => x)),
        medioProvider: json['medio_provider'] == null ? null : json['medio_provider'],
        bookUrl: json['book_url'] == null ? null : json['book_url'],
    );

    Map<String, dynamic> toJson() => {
        'R': r.toJson(),
        'apikey': apikeyValues.reverse[apikey],
        'id': id,
        'name': name,
        'url': url,
        'location': location.toJson(),
        'switch_to_order_menu': switchToOrderMenu,
        'cuisines': cuisines,
        'timings': timings,
        'average_cost_for_two': averageCostForTwo,
        'price_range': priceRange,
        'currency': currencyValues.reverse[currency],
        'highlights': List<dynamic>.from(highlights.map((x) => x)),
        'offers': List<dynamic>.from(offers.map((x) => x)),
        'opentable_support': opentableSupport,
        'is_zomato_book_res': isZomatoBookRes,
        'mezzo_provider': mezzoProviderValues.reverse[mezzoProvider],
        'is_book_form_web_view': isBookFormWebView,
        'book_form_web_view_url': bookFormWebViewUrl,
        'book_again_url': bookAgainUrl == null ? null : bookAgainUrl,
        'thumb': thumb,
        'user_rating': userRating.toJson(),
        'all_reviews_count': allReviewsCount,
        'photos_url': photosUrl,
        'photo_count': photoCount,
        'photos': List<dynamic>.from(photos.map((x) => x.toJson())),
        'menu_url': menuUrl,
        'featured_image': featuredImage,
        'has_online_delivery': hasOnlineDelivery,
        'is_delivering_now': isDeliveringNow,
        'store_type': storeType,
        'include_bogo_offers': includeBogoOffers,
        'deeplink': deeplink,
        'is_table_reservation_supported': isTableReservationSupported,
        'has_table_booking': hasTableBooking,
        'events_url': eventsUrl,
        'phone_numbers': phoneNumbers,
        'all_reviews': allReviews.toJson(),
        'establishment': List<dynamic>.from(establishment.map((x) => x)),
        'establishment_types': List<dynamic>.from(establishmentTypes.map((x) => x)),
        'medio_provider': medioProvider == null ? null : medioProvider,
        'book_url': bookUrl == null ? null : bookUrl,
    };
}

class AllReviews {
    List<Review> reviews;

    AllReviews({
        this.reviews,
    });

    factory AllReviews.fromJson(Map<String, dynamic> json) => AllReviews(
        reviews: List<Review>.from(json['reviews'].map((x) => Review.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        'reviews': List<dynamic>.from(reviews.map((x) => x.toJson())),
    };
}

class Review {
    List<dynamic> review;

    Review({
        this.review,
    });

    factory Review.fromJson(Map<String, dynamic> json) => Review(
        review: List<dynamic>.from(json['review'].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        'review': List<dynamic>.from(review.map((x) => x)),
    };
}

enum Apikey { C735_F957940_EB13959_C470502_A7_C81_F0 }

final apikeyValues = EnumValues({
    'c735f957940eb13959c470502a7c81f0': Apikey.C735_F957940_EB13959_C470502_A7_C81_F0
});

enum Currency { RS, EMPTY }

final currencyValues = EnumValues({
    '\u0024': Currency.EMPTY,
    'Rs.': Currency.RS
});

class Location {
    String address;
    String locality;
    String city;
    int cityId;
    String latitude;
    String longitude;
    String zipcode;
    int countryId;
    String localityVerbose;

    Location({
        this.address,
        this.locality,
        this.city,
        this.cityId,
        this.latitude,
        this.longitude,
        this.zipcode,
        this.countryId,
        this.localityVerbose,
    });

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        address: json['address'],
        locality: json['locality'],
        city: json['city'],
        cityId: json['city_id'],
        latitude: json['latitude'],
        longitude: json['longitude'],
        zipcode: json['zipcode'],
        countryId: json['country_id'],
        localityVerbose: json['locality_verbose'],
    );

    Map<String, dynamic> toJson() => {
        'address': address,
        'locality': locality,
        'city': city,
        'city_id': cityId,
        'latitude': latitude,
        'longitude': longitude,
        'zipcode': zipcode,
        'country_id': countryId,
        'locality_verbose': localityVerbose,
    };
}

enum MezzoProvider { OTHER, QUANDOO }

final mezzoProviderValues = EnumValues({
    'OTHER': MezzoProvider.OTHER,
    'QUANDOO': MezzoProvider.QUANDOO
});

class PhotoElement {
    PhotoPhoto photo;

    PhotoElement({
        this.photo,
    });

    factory PhotoElement.fromJson(Map<String, dynamic> json) => PhotoElement(
        photo: PhotoPhoto.fromJson(json['photo']),
    );

    Map<String, dynamic> toJson() => {
        'photo': photo.toJson(),
    };
}

class PhotoPhoto {
    String id;
    String url;
    String thumbUrl;
    User user;
    int resId;
    String caption;
    int timestamp;
    String friendlyTime;
    int width;
    int height;

    PhotoPhoto({
        this.id,
        this.url,
        this.thumbUrl,
        this.user,
        this.resId,
        this.caption,
        this.timestamp,
        this.friendlyTime,
        this.width,
        this.height,
    });

    factory PhotoPhoto.fromJson(Map<String, dynamic> json) => PhotoPhoto(
        id: json['id'],
        url: json['url'],
        thumbUrl: json['thumb_url'],
        user: User.fromJson(json['user']),
        resId: json['res_id'],
        caption: json['caption'],
        timestamp: json['timestamp'],
        friendlyTime: json['friendly_time'],
        width: json['width'],
        height: json['height'],
    );

    Map<String, dynamic> toJson() => {
        'id': id,
        'url': url,
        'thumb_url': thumbUrl,
        'user': user.toJson(),
        'res_id': resId,
        'caption': caption,
        'timestamp': timestamp,
        'friendly_time': friendlyTime,
        'width': width,
        'height': height,
    };
}

class User {
    String name;
    FoodieColor foodieColor;
    String profileUrl;
    String profileImage;
    String profileDeeplink;
    String zomatoHandle;
    FoodieLevel foodieLevel;
    int foodieLevelNum;

    User({
        this.name,
        this.foodieColor,
        this.profileUrl,
        this.profileImage,
        this.profileDeeplink,
        this.zomatoHandle,
        this.foodieLevel,
        this.foodieLevelNum,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        name: json['name'],
        foodieColor: foodieColorValues.map[json['foodie_color']],
        profileUrl: json['profile_url'],
        profileImage: json['profile_image'],
        profileDeeplink: json['profile_deeplink'],
        zomatoHandle: json['zomato_handle'] == null ? null : json['zomato_handle'],
        foodieLevel: json['foodie_level'] == null ? null : foodieLevelValues.map[json['foodie_level']],
        foodieLevelNum: json['foodie_level_num'] == null ? null : json['foodie_level_num'],
    );

    Map<String, dynamic> toJson() => {
        'name': name,
        'foodie_color': foodieColorValues.reverse[foodieColor],
        'profile_url': profileUrl,
        'profile_image': profileImage,
        'profile_deeplink': profileDeeplink,
        'zomato_handle': zomatoHandle == null ? null : zomatoHandle,
        'foodie_level': foodieLevel == null ? null : foodieLevelValues.reverse[foodieLevel],
        'foodie_level_num': foodieLevelNum == null ? null : foodieLevelNum,
    };
}

enum FoodieColor { FFD35_D, F58552, FFAE4_F, E95151 }

final foodieColorValues = EnumValues({
    'e95151': FoodieColor.E95151,
    'f58552': FoodieColor.F58552,
    'ffae4f': FoodieColor.FFAE4_F,
    'ffd35d': FoodieColor.FFD35_D
});

enum FoodieLevel { BIG_FOODIE, SUPER_FOODIE, FOODIE, CONNOISSEUR }

final foodieLevelValues = EnumValues({
    'Big Foodie': FoodieLevel.BIG_FOODIE,
    'Connoisseur': FoodieLevel.CONNOISSEUR,
    'Foodie': FoodieLevel.FOODIE,
    'Super Foodie': FoodieLevel.SUPER_FOODIE
});

class R {
    HasMenuStatus hasMenuStatus;
    int resId;

    R({
        this.hasMenuStatus,
        this.resId,
    });

    factory R.fromJson(Map<String, dynamic> json) => R(
        hasMenuStatus: HasMenuStatus.fromJson(json['has_menu_status']),
        resId: json['res_id'],
    );

    Map<String, dynamic> toJson() => {
        'has_menu_status': hasMenuStatus.toJson(),
        'res_id': resId,
    };
}

class HasMenuStatus {
    int delivery;
    int takeaway;

    HasMenuStatus({
        this.delivery,
        this.takeaway,
    });

    factory HasMenuStatus.fromJson(Map<String, dynamic> json) => HasMenuStatus(
        delivery: json['delivery'],
        takeaway: json['takeaway'],
    );

    Map<String, dynamic> toJson() => {
        'delivery': delivery,
        'takeaway': takeaway,
    };
}

class UserRating {
    dynamic aggregateRating;
    String ratingText;
    String ratingColor;
    RatingObj ratingObj;
    dynamic votes;

    UserRating({
        this.aggregateRating,
        this.ratingText,
        this.ratingColor,
        this.ratingObj,
        this.votes,
    });

    factory UserRating.fromJson(Map<String, dynamic> json) => UserRating(
        aggregateRating: json['aggregate_rating'],
        ratingText: json['rating_text'],
        ratingColor: json['rating_color'],
        ratingObj: RatingObj.fromJson(json['rating_obj']),
        votes: json['votes'],
    );

    Map<String, dynamic> toJson() => {
        'aggregate_rating': aggregateRating,
        'rating_text': ratingText,
        'rating_color': ratingColor,
        'rating_obj': ratingObj.toJson(),
        'votes': votes,
    };
}

class RatingObj {
    Title title;
    BgColor bgColor;

    RatingObj({
        this.title,
        this.bgColor,
    });

    factory RatingObj.fromJson(Map<String, dynamic> json) => RatingObj(
        title: Title.fromJson(json['title']),
        bgColor: BgColor.fromJson(json['bg_color']),
    );

    Map<String, dynamic> toJson() => {
        'title': title.toJson(),
        'bg_color': bgColor.toJson(),
    };
}

class BgColor {
    Type type;
    String tint;

    BgColor({
        this.type,
        this.tint,
    });

    factory BgColor.fromJson(Map<String, dynamic> json) => BgColor(
        type: typeValues.map[json['type']],
        tint: json['tint'],
    );

    Map<String, dynamic> toJson() => {
        'type': typeValues.reverse[type],
        'tint': tint,
    };
}

enum Type { LIME, GREY, YELLOW }

final typeValues = EnumValues({
    'grey': Type.GREY,
    'lime': Type.LIME,
    'yellow': Type.YELLOW
});

class Title {
    String text;

    Title({
        this.text,
    });

    factory Title.fromJson(Map<String, dynamic> json) => Title(
        text: json['text'],
    );

    Map<String, dynamic> toJson() => {
        'text': text,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap ??= map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
