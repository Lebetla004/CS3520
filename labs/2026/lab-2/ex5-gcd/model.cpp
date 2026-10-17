// CS3520 - Lab 2, Exercise 5: greatest common divisor (Euclid)
#include <iostream>

int gcd(int a, int b)
{
    while (b != 0) {
        int r = a % b;
        a = b;
        b = r;
    }
    return a;
}

int main()
{
    int x = 48;
    int y = 18;
    std::cout << gcd(x, y) << std::endl;
    return 0;
}