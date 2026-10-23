int abilityModifier(int score) => ((score - 10) / 2).floor();

int? savingThrowBonus({
  required int abilityScore,
  required bool proficient,
  required int proficiencyBonus,
}) {
  if (!proficient) return null;

  return abilityModifier(abilityScore) + proficiencyBonus;
}