class schoolClass {
  
  String className;
  String currentGrade;
  boolean honors;
  String period;
  schoolClass (String className, String currentGrade, boolean honors, String period) {
    this.className = className;
    this.currentGrade = currentGrade;
    this.honors = honors;
    this.period = period;
  }
  boolean Honors() {
    return honors;
  }
}
