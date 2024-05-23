gradeCalc g;

void setup() {

  g = new gradeCalc();
  g.add(new schoolClass("ENG", "A-", true, "A1"));
  g.add(new schoolClass("PHY", "A-", true, "A2"));
  g.add(new schoolClass("ORC", "A", false, "A3"));
  g.add(new schoolClass("HA2", "A+", true, "A5"));
  g.add(new schoolClass("PE", "A+", false, "B1"));
  g.add(new schoolClass("OOP", "A", false, "B2"));
  g.add(new schoolClass("SPA", "A", true, "B4"));
  g.add(new schoolClass("HOA", "A", false, "B5"));

  // g.calcAvg();
  //g.printAvg();
  // println(g.getAvg());
  //g.changeGrade("computer science", 71);
  //println(g);
  g.calcAvg();
  println("My GPA is: " + g.getAvg());
}
