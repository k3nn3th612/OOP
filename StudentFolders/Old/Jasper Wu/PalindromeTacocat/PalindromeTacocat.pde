String s = "tacocat";
int[]nums = {1, 2, 3, 3, 2, 1};

void setup() {
}

void draw() {
  println(isStringPalindrome(s));
  println(isArrayPalindrome(nums));
}

boolean isStringPalindrome(String s) {
  for (int j = 0; j < s.length(); j++) {
    if (s.charAt(j) != s.charAt(s.length()-j-1)) {
      return false;
    }
  }
  return true;
}

boolean isArrayPalindrome(int[]nums) {
  for (int i =0; i< nums.length-1; i++) {
    if (nums[i] != nums[nums.length-i-1]) {
      return false;
    }
  }
  return true;
}
