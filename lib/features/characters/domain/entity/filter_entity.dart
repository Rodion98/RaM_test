enum LiveStatus { alive, dead, unknown }

enum Gender { male, female, ungender }

class FilterEntity {
  final LiveStatus? liveStatus;
  final Gender? gender;
  const FilterEntity({
    required this.liveStatus,
    required this.gender,
  });
}
