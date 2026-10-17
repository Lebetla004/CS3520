// CS3520 - Lab 2, Exercise 2: sum of the first N integers
#include <iostream>

int main()
{
    int N = 10;
    int sum = 0;

    for (int i = 1; i <= N; i++) {
        sum = sum + i;
    }

    std::cout << sum << std::endl;
    return 0;
}