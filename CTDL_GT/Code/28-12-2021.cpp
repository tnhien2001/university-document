#include<stdio.h>

// //Xuat mang 4, 7, 1, 2.
void printArr(int a[],int n)
{   //Dang de quy.
    if(n==0)
	{
        return;
    }
    printArr(a,n-1);
    printf("%d\t",a[n-1]);
    
}


int main(){
    int a[] = {4,7,1,2};
    printArr(a,4);
    return 0;
}



