#include<stdio.h>
#include <stdlib.h>

void xuat(int a[], int n){
    for(int i=0; i<n; i++){
        printf("%d\t",a[i]);
        
    }
    printf("\n");
}

void insertionSort(int a[], int n, int *comps, int *swaps){
    
    int j;
    for(int i = 1; i<n; i++){
        printf("Round %d:\n",i);
        *swaps = 0;
        *comps = 0;
        int temp;
        temp = a[i];

        for(j = i-1; j>=0; j--){
            (*comps)++;
            
            if(a[j] > temp){
                a[j+1] = a[j];
                (*swaps)++;
            }
            else{
                break;
            }
        }
        a[j+1] = temp;

        printf("\nComps = %d\n",*comps);
        printf("\nSwaps = %d\n",*swaps);
        xuat(a,n);
        
    }
    
}

int main(){
    int a[100] = {4,2,7,1,3};
    int n = 5;
    int swaps = 0;
    int comps = 0;

    int compsAvg, swapAvg = 0;
    printf("Insertsion Sort\n");
    xuat(a,n);
    insertionSort(a,n,&comps,&swaps);
    
    return 0;
}