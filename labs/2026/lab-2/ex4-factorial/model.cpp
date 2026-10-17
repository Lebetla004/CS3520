#include <iostream>

int factorial(int n)
{
    int result = 1;
    for (int i = 2; i <= n; i++) {
        result = result * i;
    }
    return result;
}

int main()
{
    int N = 5;
    std::cout << factorial(N) << std::endl;
    return 0;
}