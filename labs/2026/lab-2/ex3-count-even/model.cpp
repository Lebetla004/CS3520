#include <iostream>

int main()
{
    int arr[] = {3, 8, 15, 22, 7, 10, 9, 4};
    int n = 8;
    int count = 0;

    for (int i = 0; i < n; i++) {
        if ((arr[i] & 1) == 0) {
            count = count + 1;
        }
    }

    std::cout << count << std::endl;
    return 0;
}