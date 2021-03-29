/*
* Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// ignore_for_file: public_member_api_docs

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the TestModal type in your schema. */
@immutable
class TestModal extends Model {
  static const classType = const TestModalType();
  final String id;
  final String test;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const TestModal._internal({@required this.id, this.test});

  factory TestModal({String id, String test}) {
    return TestModal._internal(
        id: id == null ? UUID.getUUID() : id, test: test);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestModal && id == other.id && test == other.test;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("TestModal {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("test=" + "$test");
    buffer.write("}");

    return buffer.toString();
  }

  TestModal copyWith({String id, String test}) {
    return TestModal(id: id ?? this.id, test: test ?? this.test);
  }

  TestModal.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        test = json['test'];

  Map<String, dynamic> toJson() => {'id': id, 'test': test};

  static final QueryField ID = QueryField(fieldName: "testModal.id");
  static final QueryField TEST = QueryField(fieldName: "test");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "TestModal";
    modelSchemaDefinition.pluralName = "TestModals";

    modelSchemaDefinition.authRules = [
      AuthRule(authStrategy: AuthStrategy.PUBLIC, operations: [
        ModelOperation.CREATE,
        ModelOperation.UPDATE,
        ModelOperation.DELETE,
        ModelOperation.READ
      ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestModal.TEST,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class TestModalType extends ModelType<TestModal> {
  const TestModalType();

  @override
  TestModal fromJson(Map<String, dynamic> jsonData) {
    return TestModal.fromJson(jsonData);
  }
}
