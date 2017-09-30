#include <algorithm>
#include <fstream>
#include <iostream>
#include <istream>
#include <iterator>
#include <sstream>
#include <string>
#include <vector>

#include <json/json.hpp>

string read_stdin() {
  std::cin >> std::noskipws;
  std::istream_iterator<char> it(std::cin);
  std::istream_iterator<char> end;
  std::string input(it, end);
  return input;
}

int main() {
  auto input  = read_stdin();
  auto parsed = json::parse(input);
  auto csv    = json::csv(parsed);
  std::cout << csv;
  return 0;
}
