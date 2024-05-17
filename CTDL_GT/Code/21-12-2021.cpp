//Chương 9:
// Tim hieu ve de quy
#include<stdio.h>

void countDown(int number)
{   //Dang de quy
    printf("%d\n", number);
    if(number == 0)
        return;
    
    countDown(number -1);
}

void countDown2(int number)
{   //Dang thong thuong
    for(int i = number; i>=0; i--)
        printf("%d\n", i);
}

int factorial(int number){ //Tinh giai thua
    // Dang de quy
    if(number <= 1)
        return 1;
    
    return number * factorial(number -1);
}

int fibonacci(int number){
    //Dang de quy
    if(number == 1 || number == 2)
        return 1;
    return  fibonacci(number - 1) + fibonacci(number -2);
    
}

//Xuat mang 4, 7, 1, 2.
void printArr(int a[], int n){
    if(n == 1){
        printf("%5d",a[n-1]);
        return;
    }
    printf("%5d",a[n-1]);
    printArr(a,n-1);

}

int main(){
    // countDown(3);
    // printf("%d", factorial(20));
    // printf("%d", fibonacci(2));
    int a[] = {4,7,1,2};
    printArr(a,4);
    // return 0;
}