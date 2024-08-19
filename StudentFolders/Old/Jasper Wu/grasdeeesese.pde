gradeCalc g;

void setup() {
  g = new gradeCalc();

  g.add(new schoolClass("HOA", "A", false, "B5"));
  g.add(new schoolClass("HA2", "A", true, "A5"));
  g.add(new schoolClass("PHY", "A", true, "A2"));
  g.add(new schoolClass("SPA", "A", true, "B4"));
  g.add(new schoolClass("ENG", "A", true, "A1"));
  g.add(new schoolClass("PE", "A", false, "B1"));
  g.add(new schoolClass("OOP", "A", false, "B2"));
  g.add(new schoolClass("ORC", "A", true, "A3"));

  g.calcAvg();
  println(g.getAvg());
}

class gradeCalc {
  ArrayList<schoolClass> classes = new ArrayList<schoolClass>();
  float allGradeAvg;
  FloatDict gpaNames;

  gradeCalc() {
    gpaNames = new FloatDict();
    gpaNames.set("A+", 4.0);
    gpaNames.set("A", 4.0);
    gpaNames.set("A-", 3.7);
    gpaNames.set("B+", 3.3);
    gpaNames.set("B", 3.0);
    gpaNames.set("B-", 2.7);
    gpaNames.set("C+", 2.3);
    gpaNames.set("C", 2.0);
    gpaNames.set("C-", 1.7);
    gpaNames.set("D+", 1.3);
    gpaNames.set("D", 1.0);
    gpaNames.set("D-", 0.7);
    gpaNames.set("F", 0.0);
  }

  void add(schoolClass s) {
    classes.add(s);
  }

  void calcAvg() {
    allGradeAvg = 0;
    float totalPoints = 0;

    for (schoolClass s : classes) {
      float gradeValue = gpaNames.get(s.currentGrade);
      if (s.isHonors()) {
        gradeValue += 0.5;
      }
      totalPoints += gradeValue;
    }
    allGradeAvg = totalPoints / classes.size();
  }

  float getAvg() {
    return allGradeAvg;
  }
}

class schoolClass {
  String className;
  String currentGrade;
  boolean honors;
  String period;

  schoolClass(String className, String currentGrade, boolean honors, String period) {
    this.className = className;
    this.currentGrade = currentGrade;
    this.honors = honors;
    this.period = period;
  }

  boolean isHonors() {
    return honors;
  }
}
