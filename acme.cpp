
#include "acme.hpp"

std::string GiveMeAString(std::string str, int n) {
  std::string acu = "";
  for (int i = 0; i < n; i++) {
    acu += str;
  }
  return acu;
}

int GiveMeAnInt(int n) {
  return n * n;
}
