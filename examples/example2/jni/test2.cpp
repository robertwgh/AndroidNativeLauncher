#include <iostream>

extern int add(int, int);

int main(int argc, char ** argv)
{
	
	std::cout << "Test shared library." << std::endl;
	
	int a = 1;
	int b = 2;
	std::cout << "a=" << a << std::endl
		<<"b=" << b << std::endl
		<< "add(a, b)=" << add(a, b) << std::endl;
		
	return 0;
}
