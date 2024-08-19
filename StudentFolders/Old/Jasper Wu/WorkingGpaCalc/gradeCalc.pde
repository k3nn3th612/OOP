

class gradeCalc {
  
  ArrayList<schoolClass> classes = new ArrayList <schoolClass>();
  String studentName;
  float allGradeAvg;
  float GPA;

  FloatDict gpaNames;

  gradeCalc() {
    gpaNames = new FloatDict();
    gpaNames.set("A+", 4.33);
    gpaNames.set("A", 4.0);
    gpaNames.set("A-", 3.67);
    gpaNames.set("B+", 3.33);
  }

  void add(schoolClass s) {
    classes.add(s);
  }

  void calcAvg() {
    allGradeAvg = 0;

    for (schoolClass s : classes) {

      float gradeValue = gpaNames.get(s.currentGrade);
      if (s.Honors()) {
        allGradeAvg += gradeValue + 0.5;
      } else {
        allGradeAvg += gradeValue;
      }
    }
    allGradeAvg /= classes.size();
    //println(allGradeAvg);
  }

  float getAvg() {
    return allGradeAvg;
  }

  void printAvg() {
    println(allGradeAvg);
  }

  void changeGrade(String className, float newGrade) {
  }
}
