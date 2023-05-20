class SearchResult {
  SearchResult({
    required this.resultCount,
    required this.areaName,
    required this.listing,
    required this.street,
    required this.county,
    required this.town,
    required this.postcode,
  });

  final int? resultCount;
  final String? areaName;
  final List<PropertyListing> listing;
  final String? street;
  final String? county;
  final String? town;
  final String? postcode;

  factory SearchResult.fromJson(Map<String, dynamic> json) {
    return SearchResult(
      resultCount: json["result_count"],
      areaName: json["area_name"],
      listing: json["listing"] == null
          ? []
          : List<PropertyListing>.from(
              json["listing"]!.map((x) => PropertyListing.fromJson(x))),
      street: json["street"],
      county: json["county"],
      town: json["town"],
      postcode: json["postcode"],
    );
  }

  Map<String, dynamic> toJson() => {
        "result_count": resultCount,
        "area_name": areaName,
        "listing": listing.map((x) => x.toJson()).toList(),
        "street": street,
        "county": county,
        "town": town,
        "postcode": postcode,
      };
}

class PropertyListing {
  PropertyListing({
    required this.lastSalePrice,
    required this.rentalPrices,
    required this.countryCode,
    required this.numFloors,
    required this.viewCount30Day,
    required this.image150113Url,
    required this.listingStatus,
    required this.numBedrooms,
    required this.locationIsApproximate,
    required this.image5038Url,
    required this.latitude,
    required this.viewCount,
    required this.furnishedState,
    required this.agentAddress,
    required this.branchId,
    required this.category,
    required this.propertyType,
    required this.lastSaleDate,
    required this.images,
    required this.longitude,
    required this.listingDate,
    required this.thumbnailUrl,
    required this.description,
    required this.agentPostcode,
    required this.postTown,
    required this.detailsUrl,
    required this.shortDescription,
    required this.outcode,
    required this.otherImage,
    required this.image645430Url,
    required this.title,
    required this.county,
    required this.price,
    required this.isPremiumListing,
    required this.availableFromDisplay,
    required this.listingId,
    required this.imageCaption,
    required this.bullet,
    required this.image8060Url,
    required this.propertyNumber,
    required this.status,
    required this.agentName,
    required this.numRecepts,
    required this.propertyBadge,
    required this.country,
    required this.companyId,
    required this.propertyId,
    required this.firstPublishedDate,
    required this.displayableAddress,
    required this.streetName,
    required this.numBathrooms,
    required this.incode,
    required this.featuredType,
    required this.agentLogo,
    required this.priceChange,
    required this.agentPhone,
    required this.groupId,
    required this.image354255Url,
    required this.imageUrl,
    required this.lastPublishedDate,
    required this.epcReport,
    required this.originalImage,
    required this.lettingFees,
    required this.epc,
    required this.brochure,
    required this.epcGraph,
    required this.floorPlan,
    required this.virtualTour,
    required this.billsIncluded,
    required this.petsAllowed,
    required this.floorArea,
    required this.document,
  });

  final int? lastSalePrice;
  final RentalPrices? rentalPrices;
  final String? countryCode;
  final dynamic? numFloors;
  final int? viewCount30Day;
  final String? image150113Url;
  final String? listingStatus;
  final dynamic? numBedrooms;
  final int? locationIsApproximate;
  final String? image5038Url;
  final double? latitude;
  final int? viewCount;
  final String? furnishedState;
  final String? agentAddress;
  final String? branchId;
  final String? category;
  final String? propertyType;
  final DateTime? lastSaleDate;
  final List<ZooplaImage> images;
  final double? longitude;
  final DateTime? listingDate;
  final String? thumbnailUrl;
  final String? description;
  final String? agentPostcode;
  final String? postTown;
  final String? detailsUrl;
  final String? shortDescription;
  final String? outcode;
  final List<OtherImage> otherImage;
  final String? image645430Url;
  final String? title;
  final String? county;
  final String? price;
  final int? isPremiumListing;
  final String? availableFromDisplay;
  final String? listingId;
  final String? imageCaption;
  final List<String> bullet;
  final String? image8060Url;
  final String? propertyNumber;
  final String? status;
  final String? agentName;
  final dynamic? numRecepts;
  final String? propertyBadge;
  final String? country;
  final dynamic? companyId;
  final int? propertyId;
  final DateTime? firstPublishedDate;
  final String? displayableAddress;
  final String? streetName;
  final dynamic? numBathrooms;
  final String? incode;
  final String? featuredType;
  final String? agentLogo;
  final List<PriceChange> priceChange;
  final String? agentPhone;
  final dynamic? groupId;
  final String? image354255Url;
  final String? imageUrl;
  final DateTime? lastPublishedDate;
  final List<String> epcReport;
  final List<String> originalImage;
  final String? lettingFees;
  final List<String> epc;
  final List<String> brochure;
  final List<String> epcGraph;
  final List<String> floorPlan;
  final List<String> virtualTour;
  final int? billsIncluded;
  final int? petsAllowed;
  final FloorArea? floorArea;
  final List<String> document;

  factory PropertyListing.fromJson(Map<String, dynamic> json) {
    return PropertyListing(
      lastSalePrice: json["last_sale_price"],
      rentalPrices: json["rental_prices"] == null
          ? null
          : RentalPrices.fromJson(json["rental_prices"]),
      countryCode: json["country_code"],
      numFloors: json["num_floors"],
      viewCount30Day: json["view_count_30day"],
      image150113Url: json["image_150_113_url"],
      listingStatus: json["listing_status"],
      numBedrooms: json["num_bedrooms"],
      locationIsApproximate: json["location_is_approximate"],
      image5038Url: json["image_50_38_url"],
      latitude: json["latitude"],
      viewCount: json["view_count"],
      furnishedState: json["furnished_state"],
      agentAddress: json["agent_address"],
      branchId: json["branch_id"],
      category: json["category"],
      propertyType: json["property_type"],
      lastSaleDate: DateTime.tryParse(json["last_sale_date"] ?? ""),
      images: json["images"] == null
          ? []
          : List<ZooplaImage>.from(
              json["images"]!.map((x) => ZooplaImage.fromJson(x))),
      longitude: json["longitude"],
      listingDate: DateTime.tryParse(json["listing_date"] ?? ""),
      thumbnailUrl: json["thumbnail_url"],
      description: json["description"],
      agentPostcode: json["agent_postcode"],
      postTown: json["post_town"],
      detailsUrl: json["details_url"],
      shortDescription: json["short_description"],
      outcode: json["outcode"],
      otherImage: json["other_image"] == null
          ? []
          : List<OtherImage>.from(
              json["other_image"]!.map((x) => OtherImage.fromJson(x))),
      image645430Url: json["image_645_430_url"],
      title: json["title"],
      county: json["county"],
      price: json["price"],
      isPremiumListing: json["is_premium_listing"],
      availableFromDisplay: json["available_from_display"],
      listingId: json["listing_id"],
      imageCaption: json["image_caption"],
      bullet: json["bullet"] == null
          ? []
          : List<String>.from(json["bullet"]!.map((x) => x)),
      image8060Url: json["image_80_60_url"],
      propertyNumber: json["property_number"],
      status: json["status"],
      agentName: json["agent_name"],
      numRecepts: json["num_recepts"],
      propertyBadge: json["property_badge"],
      country: json["country"],
      companyId: json["company_id"],
      propertyId: json["property_id"],
      firstPublishedDate: DateTime.tryParse(json["first_published_date"] ?? ""),
      displayableAddress: json["displayable_address"],
      streetName: json["street_name"],
      numBathrooms: json["num_bathrooms"],
      incode: json["incode"],
      featuredType: json["featured_type"],
      agentLogo: json["agent_logo"],
      priceChange: json["price_change"] == null
          ? []
          : List<PriceChange>.from(
              json["price_change"]!.map((x) => PriceChange.fromJson(x))),
      agentPhone: json["agent_phone"],
      groupId: json["group_id"],
      image354255Url: json["image_354_255_url"],
      imageUrl: json["image_url"],
      lastPublishedDate: DateTime.tryParse(json["last_published_date"] ?? ""),
      epcReport: json["epc_report"] == null
          ? []
          : List<String>.from(json["epc_report"]!.map((x) => x)),
      originalImage: json["original_image"] == null
          ? []
          : List<String>.from(json["original_image"]!.map((x) => x)),
      lettingFees: json["letting_fees"],
      epc: json["epc"] == null
          ? []
          : List<String>.from(json["epc"]!.map((x) => x)),
      brochure: json["brochure"] == null
          ? []
          : List<String>.from(json["brochure"]!.map((x) => x)),
      epcGraph: json["epc_graph"] == null
          ? []
          : List<String>.from(json["epc_graph"]!.map((x) => x)),
      floorPlan: json["floor_plan"] == null
          ? []
          : List<String>.from(json["floor_plan"]!.map((x) => x)),
      virtualTour: json["virtual_tour"] == null
          ? []
          : List<String>.from(json["virtual_tour"]!.map((x) => x)),
      billsIncluded: json["bills_included"],
      petsAllowed: json["pets_allowed"],
      floorArea: json["floor_area"] == null
          ? null
          : FloorArea.fromJson(json["floor_area"]),
      document: json["document"] == null
          ? []
          : List<String>.from(json["document"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "last_sale_price": lastSalePrice,
        "rental_prices": rentalPrices?.toJson(),
        "country_code": countryCode,
        "num_floors": numFloors,
        "view_count_30day": viewCount30Day,
        "image_150_113_url": image150113Url,
        "listing_status": listingStatus,
        "num_bedrooms": numBedrooms,
        "location_is_approximate": locationIsApproximate,
        "image_50_38_url": image5038Url,
        "latitude": latitude,
        "view_count": viewCount,
        "furnished_state": furnishedState,
        "agent_address": agentAddress,
        "branch_id": branchId,
        "category": category,
        "property_type": propertyType,
        "last_sale_date":
            "${lastSaleDate!.year.toString().padLeft(4)}-${lastSaleDate!.month.toString().padLeft(2)}-${lastSaleDate!.day.toString().padLeft(2)}",
        "images": images.map((x) => x.toJson()).toList(),
        "longitude": longitude,
        "listing_date": listingDate?.toIso8601String(),
        "thumbnail_url": thumbnailUrl,
        "description": description,
        "agent_postcode": agentPostcode,
        "post_town": postTown,
        "details_url": detailsUrl,
        "short_description": shortDescription,
        "outcode": outcode,
        "other_image": otherImage.map((x) => x.toJson()).toList(),
        "image_645_430_url": image645430Url,
        "title": title,
        "county": county,
        "price": price,
        "is_premium_listing": isPremiumListing,
        "available_from_display": availableFromDisplay,
        "listing_id": listingId,
        "image_caption": imageCaption,
        "bullet": bullet.map((x) => x).toList(),
        "image_80_60_url": image8060Url,
        "property_number": propertyNumber,
        "status": status,
        "agent_name": agentName,
        "num_recepts": numRecepts,
        "property_badge": propertyBadge,
        "country": country,
        "company_id": companyId,
        "property_id": propertyId,
        "first_published_date": firstPublishedDate?.toIso8601String(),
        "displayable_address": displayableAddress,
        "street_name": streetName,
        "num_bathrooms": numBathrooms,
        "incode": incode,
        "featured_type": featuredType,
        "agent_logo": agentLogo,
        "price_change": priceChange.map((x) => x.toJson()).toList(),
        "agent_phone": agentPhone,
        "group_id": groupId,
        "image_354_255_url": image354255Url,
        "image_url": imageUrl,
        "last_published_date": lastPublishedDate?.toIso8601String(),
        "epc_report": epcReport.map((x) => x).toList(),
        "original_image": originalImage.map((x) => x).toList(),
        "letting_fees": lettingFees,
        "epc": epc.map((x) => x).toList(),
        "brochure": brochure.map((x) => x).toList(),
        "epc_graph": epcGraph.map((x) => x).toList(),
        "floor_plan": floorPlan.map((x) => x).toList(),
        "virtual_tour": virtualTour.map((x) => x).toList(),
        "bills_included": billsIncluded,
        "pets_allowed": petsAllowed,
        "floor_area": floorArea?.toJson(),
        "document": document.map((x) => x).toList(),
      };
}

class FloorArea {
  FloorArea({
    required this.maxFloorArea,
  });

  final MaxFloorArea? maxFloorArea;

  factory FloorArea.fromJson(Map<String, dynamic> json) {
    return FloorArea(
      maxFloorArea: json["max_floor_area"] == null
          ? null
          : MaxFloorArea.fromJson(json["max_floor_area"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "max_floor_area": maxFloorArea?.toJson(),
      };
}

class MaxFloorArea {
  MaxFloorArea({
    required this.value,
    required this.units,
  });

  final String? value;
  final String? units;

  factory MaxFloorArea.fromJson(Map<String, dynamic> json) {
    return MaxFloorArea(
      value: json["value"],
      units: json["units"],
    );
  }

  Map<String, dynamic> toJson() => {
        "value": value,
        "units": units,
      };
}

class ZooplaImage {
  ZooplaImage({
    required this.original,
    required this.the480X360,
    required this.the354X255,
    required this.the645X430,
    required this.the80X60,
    required this.the768X576,
    required this.the150X113,
    required this.the1024X768,
    required this.caption,
    required this.the50X38,
    required this.the240X180,
  });

  final String? original;
  final String? the480X360;
  final String? the354X255;
  final String? the645X430;
  final String? the80X60;
  final String? the768X576;
  final String? the150X113;
  final String? the1024X768;
  final String? caption;
  final String? the50X38;
  final String? the240X180;

  factory ZooplaImage.fromJson(Map<String, dynamic> json) {
    return ZooplaImage(
      original: json["original"],
      the480X360: json["480x360"],
      the354X255: json["354x255"],
      the645X430: json["645x430"],
      the80X60: json["80x60"],
      the768X576: json["768x576"],
      the150X113: json["150x113"],
      the1024X768: json["1024x768"],
      caption: json["caption"],
      the50X38: json["50x38"],
      the240X180: json["240x180"],
    );
  }

  Map<String, dynamic> toJson() => {
        "original": original,
        "480x360": the480X360,
        "354x255": the354X255,
        "645x430": the645X430,
        "80x60": the80X60,
        "768x576": the768X576,
        "150x113": the150X113,
        "1024x768": the1024X768,
        "caption": caption,
        "50x38": the50X38,
        "240x180": the240X180,
      };
}

class OtherImage {
  OtherImage({
    required this.url,
    required this.description,
  });

  final String? url;
  final String? description;

  factory OtherImage.fromJson(Map<String, dynamic> json) {
    return OtherImage(
      url: json["url"],
      description: json["description"],
    );
  }

  Map<String, dynamic> toJson() => {
        "url": url,
        "description": description,
      };
}

class PriceChange {
  PriceChange({
    required this.direction,
    required this.date,
    required this.percent,
    required this.price,
  });

  final String? direction;
  final DateTime? date;
  final String? percent;
  final String? price;

  factory PriceChange.fromJson(Map<String, dynamic> json) {
    return PriceChange(
      direction: json["direction"],
      date: DateTime.tryParse(json["date"] ?? ""),
      percent: json["percent"],
      price: json["price"],
    );
  }

  Map<String, dynamic> toJson() => {
        "direction": direction,
        "date": date?.toIso8601String(),
        "percent": percent,
        "price": price,
      };
}

class RentalPrices {
  RentalPrices({
    required this.sharedOccupancy,
    required this.perWeek,
    required this.accurate,
    required this.perMonth,
  });

  final String? sharedOccupancy;
  final int? perWeek;
  final String? accurate;
  final int? perMonth;

  factory RentalPrices.fromJson(Map<String, dynamic> json) {
    return RentalPrices(
      sharedOccupancy: json["shared_occupancy"],
      perWeek: json["per_week"],
      accurate: json["accurate"],
      perMonth: json["per_month"],
    );
  }

  Map<String, dynamic> toJson() => {
        "shared_occupancy": sharedOccupancy,
        "per_week": perWeek,
        "accurate": accurate,
        "per_month": perMonth,
      };
}
