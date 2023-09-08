import 'package:flutter/cupertino.dart';

import 'Uimodel.dart';

String jsonData = '''{
  "name": "personal-details",
  "status": "Pending",
  "moduleId": "f6c1ac04-a306-42c5-a712-4951f74404d5",
  "version": "4.0",
  "sections": [
    {
      "name": "basic",
      "sectionId": "e4fdcf0c-2733-4d20-a8d4-f27bc8c91732",
      "status": "Pending",
      "version": "8.0",
      "properties": {
        "headerIconUrl": "Some Icon",
        "headerSubtitle": "Tell us a little about you to start your journey",
        "headerTitle": "Welcome!",
        "type": "form"
      },
      "additionalData": {
        "redirectUrl": "",
        "data": null,
        "isIfrwame": false,
        "isExternalProvider": false
      },
      "fields": [
        {
          "name": "fullname",
          "fieldId": "2d6b1c62-478c-414f-baf5-7e52e6364335",
          "status": "Pending",
          "value": "",
          "properties": {
            "errorText": "Please enter a valid name",
            "inputType": "text-name",
            "isEditable": true,
            "maxLength": 100,
            "minLength": 2,
            "subtitle": "As mentioned on your PAN card",
            "title": "Full name"
          },
          "version": "2.0"
        },
        {
          "name": "dob",
          "fieldId": "95e97986-fcd3-4341-8e84-057f156d46d5",
          "status": "Pending",
          "value": "",
          "properties": {
            "errorText": "Please enter a valid date",
            "hint": "DD/MM/YYYY",
            "inputType": "date",
            "isEditable": true,
            "title": "Date of birth"
          },
          "version": "2.0"
        },
        {
          "name": "gender",
          "fieldId": "1ae172a3-0efd-4557-b3a9-7d997de286bf",
          "status": "Pending",
          "value": "",
          "properties": {
            "inputType": "single-selection",
            "isEditable": true,
            "selections": [
              {
                "name": "Male",
                "iconUrl": "icon",
                "selectionModule": null,
                "fields": null,
                "title": "Male",
                "subtitle": null,
                "ctaText": null,
                "suggestionTextStartIconUrl": null,
                "suggestionText": null,
                "deeplink": null,
                "additionalData": null
              },
              {
                "name": "Female",
                "iconUrl": "icon",
                "selectionModule": null,
                "fields": null,
                "title": "Female",
                "subtitle": null,
                "ctaText": null,
                "suggestionTextStartIconUrl": null,
                "suggestionText": null,
                "deeplink": null,
                "additionalData": null
              },
              {
                "name": "Others",
                "iconUrl": "icon",
                "selectionModule": null,
                "fields": null,
                "title": "Rather not say",
                "subtitle": null,
                "ctaText": null,
                "suggestionTextStartIconUrl": null,
                "suggestionText": null,
                "deeplink": null,
                "additionalData": null
              }
            ],
            "title": "Gender"
          },
          "version": "2.0"
        }
      ],
      "typeOfDataRequired": 1,
      "requestExpectedStatus": 0
    }
  ],
  "completedModules": null,
  "isJourneyCompleted": false,
  "journeyContext": {
    "applicationId": "00000000-0000-0000-0000-000000000000",
    "merchantId": "a70ce9c4-881a-405d-834a-4a18554fb33a"
  },
  "executionStrategy": "User"
}''';
getUi(){
  return uiModelFromJson(jsonData);
}

final formKey = GlobalKey<FormState>();

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }
