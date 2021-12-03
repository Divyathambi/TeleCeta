// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'patient_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatientDto _$PatientDtoFromJson(Map<String, dynamic> json) {
  return _PatientDto.fromJson(json);
}

/// @nodoc
class _$PatientDtoTearOff {
  const _$PatientDtoTearOff();

  _PatientDto call(
      {@JsonKey(ignore: true) String? id,
      String? name,
      String? emailAddress,
      String? phoneNumber,
      String? gender,
      DateTime? dateOfBirth,
      String? bloodGroup,
      double? height,
      double? weight,
      String? location,
      bool? haveAllergies,
      List<String>? allergies,
      bool? takesMedication,
      List<String>? medications,
      bool? haveInjuries,
      bool? haveChronicIllnesses,
      bool? wasHospitalized,
      List<String>? injuries,
      bool? familyHealthIssue,
      String? occupation,
      String? workout,
      String? stress,
      String? diet,
      String? alcohol,
      String? smoke}) {
    return _PatientDto(
      id: id,
      name: name,
      emailAddress: emailAddress,
      phoneNumber: phoneNumber,
      gender: gender,
      dateOfBirth: dateOfBirth,
      bloodGroup: bloodGroup,
      height: height,
      weight: weight,
      location: location,
      haveAllergies: haveAllergies,
      allergies: allergies,
      takesMedication: takesMedication,
      medications: medications,
      haveInjuries: haveInjuries,
      haveChronicIllnesses: haveChronicIllnesses,
      wasHospitalized: wasHospitalized,
      injuries: injuries,
      familyHealthIssue: familyHealthIssue,
      occupation: occupation,
      workout: workout,
      stress: stress,
      diet: diet,
      alcohol: alcohol,
      smoke: smoke,
    );
  }

  PatientDto fromJson(Map<String, Object?> json) {
    return PatientDto.fromJson(json);
  }
}

/// @nodoc
const $PatientDto = _$PatientDtoTearOff();

/// @nodoc
mixin _$PatientDto {
// patient basic details
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get emailAddress => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  String? get bloodGroup => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  String? get location =>
      throw _privateConstructorUsedError; // patient medical details
  bool? get haveAllergies => throw _privateConstructorUsedError;
  List<String>? get allergies => throw _privateConstructorUsedError;
  bool? get takesMedication => throw _privateConstructorUsedError;
  List<String>? get medications => throw _privateConstructorUsedError;
  bool? get haveInjuries => throw _privateConstructorUsedError;
  bool? get haveChronicIllnesses => throw _privateConstructorUsedError;
  bool? get wasHospitalized => throw _privateConstructorUsedError;
  List<String>? get injuries => throw _privateConstructorUsedError;
  bool? get familyHealthIssue =>
      throw _privateConstructorUsedError; // patient lifestyle details
  String? get occupation => throw _privateConstructorUsedError;
  String? get workout => throw _privateConstructorUsedError;
  String? get stress => throw _privateConstructorUsedError;
  String? get diet => throw _privateConstructorUsedError;
  String? get alcohol => throw _privateConstructorUsedError;
  String? get smoke => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientDtoCopyWith<PatientDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientDtoCopyWith<$Res> {
  factory $PatientDtoCopyWith(
          PatientDto value, $Res Function(PatientDto) then) =
      _$PatientDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String? name,
      String? emailAddress,
      String? phoneNumber,
      String? gender,
      DateTime? dateOfBirth,
      String? bloodGroup,
      double? height,
      double? weight,
      String? location,
      bool? haveAllergies,
      List<String>? allergies,
      bool? takesMedication,
      List<String>? medications,
      bool? haveInjuries,
      bool? haveChronicIllnesses,
      bool? wasHospitalized,
      List<String>? injuries,
      bool? familyHealthIssue,
      String? occupation,
      String? workout,
      String? stress,
      String? diet,
      String? alcohol,
      String? smoke});
}

/// @nodoc
class _$PatientDtoCopyWithImpl<$Res> implements $PatientDtoCopyWith<$Res> {
  _$PatientDtoCopyWithImpl(this._value, this._then);

  final PatientDto _value;
  // ignore: unused_field
  final $Res Function(PatientDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? emailAddress = freezed,
    Object? phoneNumber = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? bloodGroup = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? location = freezed,
    Object? haveAllergies = freezed,
    Object? allergies = freezed,
    Object? takesMedication = freezed,
    Object? medications = freezed,
    Object? haveInjuries = freezed,
    Object? haveChronicIllnesses = freezed,
    Object? wasHospitalized = freezed,
    Object? injuries = freezed,
    Object? familyHealthIssue = freezed,
    Object? occupation = freezed,
    Object? workout = freezed,
    Object? stress = freezed,
    Object? diet = freezed,
    Object? alcohol = freezed,
    Object? smoke = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bloodGroup: bloodGroup == freezed
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      haveAllergies: haveAllergies == freezed
          ? _value.haveAllergies
          : haveAllergies // ignore: cast_nullable_to_non_nullable
              as bool?,
      allergies: allergies == freezed
          ? _value.allergies
          : allergies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      takesMedication: takesMedication == freezed
          ? _value.takesMedication
          : takesMedication // ignore: cast_nullable_to_non_nullable
              as bool?,
      medications: medications == freezed
          ? _value.medications
          : medications // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      haveInjuries: haveInjuries == freezed
          ? _value.haveInjuries
          : haveInjuries // ignore: cast_nullable_to_non_nullable
              as bool?,
      haveChronicIllnesses: haveChronicIllnesses == freezed
          ? _value.haveChronicIllnesses
          : haveChronicIllnesses // ignore: cast_nullable_to_non_nullable
              as bool?,
      wasHospitalized: wasHospitalized == freezed
          ? _value.wasHospitalized
          : wasHospitalized // ignore: cast_nullable_to_non_nullable
              as bool?,
      injuries: injuries == freezed
          ? _value.injuries
          : injuries // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      familyHealthIssue: familyHealthIssue == freezed
          ? _value.familyHealthIssue
          : familyHealthIssue // ignore: cast_nullable_to_non_nullable
              as bool?,
      occupation: occupation == freezed
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      workout: workout == freezed
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as String?,
      stress: stress == freezed
          ? _value.stress
          : stress // ignore: cast_nullable_to_non_nullable
              as String?,
      diet: diet == freezed
          ? _value.diet
          : diet // ignore: cast_nullable_to_non_nullable
              as String?,
      alcohol: alcohol == freezed
          ? _value.alcohol
          : alcohol // ignore: cast_nullable_to_non_nullable
              as String?,
      smoke: smoke == freezed
          ? _value.smoke
          : smoke // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PatientDtoCopyWith<$Res> implements $PatientDtoCopyWith<$Res> {
  factory _$PatientDtoCopyWith(
          _PatientDto value, $Res Function(_PatientDto) then) =
      __$PatientDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String? name,
      String? emailAddress,
      String? phoneNumber,
      String? gender,
      DateTime? dateOfBirth,
      String? bloodGroup,
      double? height,
      double? weight,
      String? location,
      bool? haveAllergies,
      List<String>? allergies,
      bool? takesMedication,
      List<String>? medications,
      bool? haveInjuries,
      bool? haveChronicIllnesses,
      bool? wasHospitalized,
      List<String>? injuries,
      bool? familyHealthIssue,
      String? occupation,
      String? workout,
      String? stress,
      String? diet,
      String? alcohol,
      String? smoke});
}

/// @nodoc
class __$PatientDtoCopyWithImpl<$Res> extends _$PatientDtoCopyWithImpl<$Res>
    implements _$PatientDtoCopyWith<$Res> {
  __$PatientDtoCopyWithImpl(
      _PatientDto _value, $Res Function(_PatientDto) _then)
      : super(_value, (v) => _then(v as _PatientDto));

  @override
  _PatientDto get _value => super._value as _PatientDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? emailAddress = freezed,
    Object? phoneNumber = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? bloodGroup = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? location = freezed,
    Object? haveAllergies = freezed,
    Object? allergies = freezed,
    Object? takesMedication = freezed,
    Object? medications = freezed,
    Object? haveInjuries = freezed,
    Object? haveChronicIllnesses = freezed,
    Object? wasHospitalized = freezed,
    Object? injuries = freezed,
    Object? familyHealthIssue = freezed,
    Object? occupation = freezed,
    Object? workout = freezed,
    Object? stress = freezed,
    Object? diet = freezed,
    Object? alcohol = freezed,
    Object? smoke = freezed,
  }) {
    return _then(_PatientDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bloodGroup: bloodGroup == freezed
          ? _value.bloodGroup
          : bloodGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      haveAllergies: haveAllergies == freezed
          ? _value.haveAllergies
          : haveAllergies // ignore: cast_nullable_to_non_nullable
              as bool?,
      allergies: allergies == freezed
          ? _value.allergies
          : allergies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      takesMedication: takesMedication == freezed
          ? _value.takesMedication
          : takesMedication // ignore: cast_nullable_to_non_nullable
              as bool?,
      medications: medications == freezed
          ? _value.medications
          : medications // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      haveInjuries: haveInjuries == freezed
          ? _value.haveInjuries
          : haveInjuries // ignore: cast_nullable_to_non_nullable
              as bool?,
      haveChronicIllnesses: haveChronicIllnesses == freezed
          ? _value.haveChronicIllnesses
          : haveChronicIllnesses // ignore: cast_nullable_to_non_nullable
              as bool?,
      wasHospitalized: wasHospitalized == freezed
          ? _value.wasHospitalized
          : wasHospitalized // ignore: cast_nullable_to_non_nullable
              as bool?,
      injuries: injuries == freezed
          ? _value.injuries
          : injuries // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      familyHealthIssue: familyHealthIssue == freezed
          ? _value.familyHealthIssue
          : familyHealthIssue // ignore: cast_nullable_to_non_nullable
              as bool?,
      occupation: occupation == freezed
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      workout: workout == freezed
          ? _value.workout
          : workout // ignore: cast_nullable_to_non_nullable
              as String?,
      stress: stress == freezed
          ? _value.stress
          : stress // ignore: cast_nullable_to_non_nullable
              as String?,
      diet: diet == freezed
          ? _value.diet
          : diet // ignore: cast_nullable_to_non_nullable
              as String?,
      alcohol: alcohol == freezed
          ? _value.alcohol
          : alcohol // ignore: cast_nullable_to_non_nullable
              as String?,
      smoke: smoke == freezed
          ? _value.smoke
          : smoke // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PatientDto extends _PatientDto {
  const _$_PatientDto(
      {@JsonKey(ignore: true) this.id,
      this.name,
      this.emailAddress,
      this.phoneNumber,
      this.gender,
      this.dateOfBirth,
      this.bloodGroup,
      this.height,
      this.weight,
      this.location,
      this.haveAllergies,
      this.allergies,
      this.takesMedication,
      this.medications,
      this.haveInjuries,
      this.haveChronicIllnesses,
      this.wasHospitalized,
      this.injuries,
      this.familyHealthIssue,
      this.occupation,
      this.workout,
      this.stress,
      this.diet,
      this.alcohol,
      this.smoke})
      : super._();

  factory _$_PatientDto.fromJson(Map<String, dynamic> json) =>
      _$$_PatientDtoFromJson(json);

  @override // patient basic details
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String? name;
  @override
  final String? emailAddress;
  @override
  final String? phoneNumber;
  @override
  final String? gender;
  @override
  final DateTime? dateOfBirth;
  @override
  final String? bloodGroup;
  @override
  final double? height;
  @override
  final double? weight;
  @override
  final String? location;
  @override // patient medical details
  final bool? haveAllergies;
  @override
  final List<String>? allergies;
  @override
  final bool? takesMedication;
  @override
  final List<String>? medications;
  @override
  final bool? haveInjuries;
  @override
  final bool? haveChronicIllnesses;
  @override
  final bool? wasHospitalized;
  @override
  final List<String>? injuries;
  @override
  final bool? familyHealthIssue;
  @override // patient lifestyle details
  final String? occupation;
  @override
  final String? workout;
  @override
  final String? stress;
  @override
  final String? diet;
  @override
  final String? alcohol;
  @override
  final String? smoke;

  @override
  String toString() {
    return 'PatientDto(id: $id, name: $name, emailAddress: $emailAddress, phoneNumber: $phoneNumber, gender: $gender, dateOfBirth: $dateOfBirth, bloodGroup: $bloodGroup, height: $height, weight: $weight, location: $location, haveAllergies: $haveAllergies, allergies: $allergies, takesMedication: $takesMedication, medications: $medications, haveInjuries: $haveInjuries, haveChronicIllnesses: $haveChronicIllnesses, wasHospitalized: $wasHospitalized, injuries: $injuries, familyHealthIssue: $familyHealthIssue, occupation: $occupation, workout: $workout, stress: $stress, diet: $diet, alcohol: $alcohol, smoke: $smoke)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PatientDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.bloodGroup, bloodGroup) ||
                other.bloodGroup == bloodGroup) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.haveAllergies, haveAllergies) ||
                other.haveAllergies == haveAllergies) &&
            const DeepCollectionEquality().equals(other.allergies, allergies) &&
            (identical(other.takesMedication, takesMedication) ||
                other.takesMedication == takesMedication) &&
            const DeepCollectionEquality()
                .equals(other.medications, medications) &&
            (identical(other.haveInjuries, haveInjuries) ||
                other.haveInjuries == haveInjuries) &&
            (identical(other.haveChronicIllnesses, haveChronicIllnesses) ||
                other.haveChronicIllnesses == haveChronicIllnesses) &&
            (identical(other.wasHospitalized, wasHospitalized) ||
                other.wasHospitalized == wasHospitalized) &&
            const DeepCollectionEquality().equals(other.injuries, injuries) &&
            (identical(other.familyHealthIssue, familyHealthIssue) ||
                other.familyHealthIssue == familyHealthIssue) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.workout, workout) || other.workout == workout) &&
            (identical(other.stress, stress) || other.stress == stress) &&
            (identical(other.diet, diet) || other.diet == diet) &&
            (identical(other.alcohol, alcohol) || other.alcohol == alcohol) &&
            (identical(other.smoke, smoke) || other.smoke == smoke));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        emailAddress,
        phoneNumber,
        gender,
        dateOfBirth,
        bloodGroup,
        height,
        weight,
        location,
        haveAllergies,
        const DeepCollectionEquality().hash(allergies),
        takesMedication,
        const DeepCollectionEquality().hash(medications),
        haveInjuries,
        haveChronicIllnesses,
        wasHospitalized,
        const DeepCollectionEquality().hash(injuries),
        familyHealthIssue,
        occupation,
        workout,
        stress,
        diet,
        alcohol,
        smoke
      ]);

  @JsonKey(ignore: true)
  @override
  _$PatientDtoCopyWith<_PatientDto> get copyWith =>
      __$PatientDtoCopyWithImpl<_PatientDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatientDtoToJson(this);
  }
}

abstract class _PatientDto extends PatientDto {
  const factory _PatientDto(
      {@JsonKey(ignore: true) String? id,
      String? name,
      String? emailAddress,
      String? phoneNumber,
      String? gender,
      DateTime? dateOfBirth,
      String? bloodGroup,
      double? height,
      double? weight,
      String? location,
      bool? haveAllergies,
      List<String>? allergies,
      bool? takesMedication,
      List<String>? medications,
      bool? haveInjuries,
      bool? haveChronicIllnesses,
      bool? wasHospitalized,
      List<String>? injuries,
      bool? familyHealthIssue,
      String? occupation,
      String? workout,
      String? stress,
      String? diet,
      String? alcohol,
      String? smoke}) = _$_PatientDto;
  const _PatientDto._() : super._();

  factory _PatientDto.fromJson(Map<String, dynamic> json) =
      _$_PatientDto.fromJson;

  @override // patient basic details
  @JsonKey(ignore: true)
  String? get id;
  @override
  String? get name;
  @override
  String? get emailAddress;
  @override
  String? get phoneNumber;
  @override
  String? get gender;
  @override
  DateTime? get dateOfBirth;
  @override
  String? get bloodGroup;
  @override
  double? get height;
  @override
  double? get weight;
  @override
  String? get location;
  @override // patient medical details
  bool? get haveAllergies;
  @override
  List<String>? get allergies;
  @override
  bool? get takesMedication;
  @override
  List<String>? get medications;
  @override
  bool? get haveInjuries;
  @override
  bool? get haveChronicIllnesses;
  @override
  bool? get wasHospitalized;
  @override
  List<String>? get injuries;
  @override
  bool? get familyHealthIssue;
  @override // patient lifestyle details
  String? get occupation;
  @override
  String? get workout;
  @override
  String? get stress;
  @override
  String? get diet;
  @override
  String? get alcohol;
  @override
  String? get smoke;
  @override
  @JsonKey(ignore: true)
  _$PatientDtoCopyWith<_PatientDto> get copyWith =>
      throw _privateConstructorUsedError;
}
