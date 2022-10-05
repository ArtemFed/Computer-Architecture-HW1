#include <stdio.h>

#define max_size 20


int Task(const int array[], int size, int *B) {
    int count = 1;
    if (size == 0){
        return 0;
    }
    B[0] = array[0];
    for (int j = 0; j < size - 1; ++j) {
        B[count] = array[count] + B[count - 1];
        ++count;
    }
    return count;
}

int main() {
    int length;
    int i;
    printf("Input length (0 < length <= %d): ", max_size);
    scanf("%d", &length);

    if (length < 1 || length > max_size) {
        printf("Incorrect length = %d\n", length);
        return 1;
    }

    int A[length];
    int B[length];

    for (i = 0; i < length; ++i) {
        printf("A[%d] = ", i);
        scanf("%d", A + i);
    }

    int b_size = Task(A, length, B);
    if (b_size == 0) {
        printf("Nothing to print!");
    } else {
        for (i = 0; i < b_size; ++i) {
            printf("%d ", B[i]);
        }
    }
    return 0;
}
