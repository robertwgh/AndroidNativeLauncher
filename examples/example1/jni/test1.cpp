#include <iostream>
#include <fstream>

int main(int argc, char ** argv)
{
	if(argc > 1)
	{
		std::cout << "argc: " << argc << std::endl;
		for(int i = 0; i < argc; i ++)
		{
			std::cout << "argv[" << i << "]: " << argv[i] << std::endl;
		}
		std::cout << std::endl;
	}

	std::cout << "cout: Hello world!" << std::endl;
	std::cerr << "cerr: Hello world!" << std::endl;

	
	std::cout << "\nTest:\n" << std::endl;
	for(int i = 0; i < 20; i ++)
	{
		for(int j = 0; j < i; j ++)
			std::cout << "*";
		
		std::cout << std::endl;
	}
	
	std::ofstream ofs("results.txt");
	if(ofs.is_open()){
		ofs << "This is just a test." << std::endl;
		
		ofs.close();
		
		std::cout << "results.txt is generated." << std::endl;
	}
	
	return 0;
}
