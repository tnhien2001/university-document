#include<stdio.h>

void xuat(int a[], int n){
    for(int i=0; i<n; i++){
        printf("%d\t",a[i]);
        
    }
    printf("\n");
}


void sort(int a[], int n)
{
    int i, j;
    for (int i = 0; i < n - 1; i++)
    {   
        int swap = 0; 
        int comps = 0;
        for (int j = n - 1; j > i; j--)
        {   
            comps++;
            if (a[j] >= a[j - 1])
            {
                int temp = a[j];
                a[j] = a[j - 1];
                a[j - 1] = temp;
                swap++;
            }
        }
        printf("\nComps = %d\n",comps);
        printf("\nSwaps = %d\n",swap);
        xuat(a,n);
    }
}


int main(){
    int a[100] = {5,3,2,1,4};
    int n = 5;
    int swaps = 0; 
    int comps = 0;

    int compsAvg, swapsAvg;


    xuat(a,n);
    sort(a,n);
}