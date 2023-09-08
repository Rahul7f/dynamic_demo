// To parse this JSON data, do
//
//     final uiModel = uiModelFromJson(jsonString);

import 'dart:convert';

UiModel uiModelFromJson(String str) => UiModel.fromJson(json.decode(str));

String uiModelToJson(UiModel data) => json.encode(data.toJson());

class UiModel {
  String? name;
  String? status;
  String? moduleId;
  String? version;
  List<Section>? sections;
  dynamic completedModules;
  bool? isJourneyCompleted;
  JourneyContext? journeyContext;
  String? executionStrategy;

  UiModel({
    this.name,
    this.status,
    this.moduleId,
    this.version,
    this.sections,
    this.completedModules,
    this.isJourneyCompleted,
    this.journeyContext,
    this.executionStrategy,
  });

  factory UiModel.fromJson(Map<String, dynamic> json) => UiModel(
    name: json["name"],
    status: json["status"],
    moduleId: json["moduleId"],
    version: json["version"],
    sections: json["sections"] == null ? [] : List<Section>.from(json["sections"]!.map((x) => Section.fromJson(x))),
    completedModules: json["completedModules"],
    isJourneyCompleted: json["isJourneyCompleted"],
    journeyContext: json["journeyContext"] == null ? null : JourneyContext.fromJson(json["journeyContext"]),
    executionStrategy: json["executionStrategy"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "status": status,
    "moduleId": moduleId,
    "version": version,
    "sections": sections == null ? [] : List<dynamic>.from(sections!.map((x) => x.toJson())),
    "completedModules": completedModules,
    "isJourneyCompleted": isJourneyCompleted,
    "journeyContext": journeyContext?.toJson(),
    "executionStrategy": executionStrategy,
  };
}

class JourneyContext {
  String? applicationId;
  String? merchantId;

  JourneyContext({
    this.applicationId,
    this.merchantId,
  });

  factory JourneyContext.fromJson(Map<String, dynamic> json) => JourneyContext(
    applicationId: json["applicationId"],
    merchantId: json["merchantId"],
  );

  Map<String, dynamic> toJson() => {
    "applicationId": applicationId,
    "merchantId": merchantId,
  };
}

class Section {
  String? name;
  String? sectionId;
  String? status;
  String? version;
  SectionProperties? properties;
  AdditionalData? additionalData;
  List<Field>? fields;
  int? typeOfDataRequired;
  int? requestExpectedStatus;

  Section({
    this.name,
    this.sectionId,
    this.status,
    this.version,
    this.properties,
    this.additionalData,
    this.fields,
    this.typeOfDataRequired,
    this.requestExpectedStatus,
  });

  factory Section.fromJson(Map<String, dynamic> json) => Section(
    name: json["name"],
    sectionId: json["sectionId"],
    status: json["status"],
    version: json["version"],
    properties: json["properties"] == null ? null : SectionProperties.fromJson(json["properties"]),
    additionalData: json["additionalData"] == null ? null : AdditionalData.fromJson(json["additionalData"]),
    fields: json["fields"] == null ? [] : List<Field>.from(json["fields"]!.map((x) => Field.fromJson(x))),
    typeOfDataRequired: json["typeOfDataRequired"],
    requestExpectedStatus: json["requestExpectedStatus"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "sectionId": sectionId,
    "status": status,
    "version": version,
    "properties": properties?.toJson(),
    "additionalData": additionalData?.toJson(),
    "fields": fields == null ? [] : List<dynamic>.from(fields!.map((x) => x.toJson())),
    "typeOfDataRequired": typeOfDataRequired,
    "requestExpectedStatus": requestExpectedStatus,
  };
}

class AdditionalData {
  String? redirectUrl;
  dynamic data;
  bool? isIfrwame;
  bool? isExternalProvider;
  bool? isIframe;

  AdditionalData({
    this.redirectUrl,
    this.data,
    this.isIfrwame,
    this.isExternalProvider,
    this.isIframe,
  });

  factory AdditionalData.fromJson(Map<String, dynamic> json) => AdditionalData(
    redirectUrl: json["redirectUrl"],
    data: json["data"],
    isIfrwame: json["isIfrwame"],
    isExternalProvider: json["isExternalProvider"],
    isIframe: json["isIframe"],
  );

  Map<String, dynamic> toJson() => {
    "redirectUrl": redirectUrl,
    "data": data,
    "isIfrwame": isIfrwame,
    "isExternalProvider": isExternalProvider,
    "isIframe": isIframe,
  };
}

class Field {
  String? name;
  String? fieldId;
  String? status;
  String? value;
  FieldProperties? properties;
  String? version;

  Field({
    this.name,
    this.fieldId,
    this.status,
    this.value,
    this.properties,
    this.version,
  });

  factory Field.fromJson(Map<String, dynamic> json) => Field(
    name: json["name"],
    fieldId: json["fieldId"],
    status: json["status"],
    value: json["value"],
    properties: json["properties"] == null ? null : FieldProperties.fromJson(json["properties"]),
    version: json["version"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "fieldId": fieldId,
    "status": status,
    "value": value,
    "properties": properties?.toJson(),
    "version": version,
  };
}

class FieldProperties {
  String? errorText;
  String? inputType;
  bool? isEditable;
  int? maxLength;
  int? minLength;
  String? subtitle;
  String? title;
  String? hint;
  List<Selection>? selections;

  FieldProperties({
    this.errorText,
    this.inputType,
    this.isEditable,
    this.maxLength,
    this.minLength,
    this.subtitle,
    this.title,
    this.hint,
    this.selections,
  });

  factory FieldProperties.fromJson(Map<String, dynamic> json) => FieldProperties(
    errorText: json["errorText"],
    inputType: json["inputType"],
    isEditable: json["isEditable"],
    maxLength: json["maxLength"],
    minLength: json["minLength"],
    subtitle: json["subtitle"],
    title: json["title"],
    hint: json["hint"],
    selections: json["selections"] == null ? [] : List<Selection>.from(json["selections"]!.map((x) => Selection.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "errorText": errorText,
    "inputType": inputType,
    "isEditable": isEditable,
    "maxLength": maxLength,
    "minLength": minLength,
    "subtitle": subtitle,
    "title": title,
    "hint": hint,
    "selections": selections == null ? [] : List<dynamic>.from(selections!.map((x) => x.toJson())),
  };
}

class Selection {
  String? name;
  String? iconUrl;
  dynamic selectionModule;
  dynamic fields;
  String? title;
  dynamic subtitle;
  dynamic ctaText;
  dynamic suggestionTextStartIconUrl;
  dynamic suggestionText;
  dynamic deeplink;
  dynamic additionalData;

  Selection({
    this.name,
    this.iconUrl,
    this.selectionModule,
    this.fields,
    this.title,
    this.subtitle,
    this.ctaText,
    this.suggestionTextStartIconUrl,
    this.suggestionText,
    this.deeplink,
    this.additionalData,
  });

  factory Selection.fromJson(Map<String, dynamic> json) => Selection(
    name: json["name"],
    iconUrl: json["iconUrl"],
    selectionModule: json["selectionModule"],
    fields: json["fields"],
    title: json["title"],
    subtitle: json["subtitle"],
    ctaText: json["ctaText"],
    suggestionTextStartIconUrl: json["suggestionTextStartIconUrl"],
    suggestionText: json["suggestionText"],
    deeplink: json["deeplink"],
    additionalData: json["additionalData"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "iconUrl": iconUrl,
    "selectionModule": selectionModule,
    "fields": fields,
    "title": title,
    "subtitle": subtitle,
    "ctaText": ctaText,
    "suggestionTextStartIconUrl": suggestionTextStartIconUrl,
    "suggestionText": suggestionText,
    "deeplink": deeplink,
    "additionalData": additionalData,
  };
}

class SectionProperties {
  String? headerIconUrl;
  String? headerSubtitle;
  String? headerTitle;
  String? type;

  SectionProperties({
    this.headerIconUrl,
    this.headerSubtitle,
    this.headerTitle,
    this.type,
  });

  factory SectionProperties.fromJson(Map<String, dynamic> json) => SectionProperties(
    headerIconUrl: json["headerIconUrl"],
    headerSubtitle: json["headerSubtitle"],
    headerTitle: json["headerTitle"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "headerIconUrl": headerIconUrl,
    "headerSubtitle": headerSubtitle,
    "headerTitle": headerTitle,
    "type": type,
  };
}
