#include<stdio.h>
#include <stdlib.h>

void xuat(int a[], int n){
    for(int i=0; i<n; i++){
        printf("%d\t",a[i]);
        
    }
    printf("\n");
}

void insertionSort(int a[], int n, int *comps, int *shift){
    *shift = 0;
    *comps = 0;
    int j;
    for(int i = 1; i<n; i++){
        int temp;
        temp = a[i];

        for(j = i-1; j>=0; j--){
            (*comps)++;
            
            if(a[j] > temp){
                a[j+1] = a[j];
                (*shift)++;
            }
            else{
                break;
            }
        }
        a[j+1] = temp;
        
    }
    printf("\nComps = %d\n",*comps);
    printf("\nSwaps = %d\n",*shift);
    xuat(a,n);
}

int complexity(int n, int *compsAvg, int *swapsAvg){
    int a[n];
    int freq[n*n];
    
    int sumComps = 0;
    int sumSwaps = 0;
    int stepSwaps, stepComps = 0;

    for(int i=0; i<n*n; i++)
        freq[i] = 0;
        
    

    for(int i=0; i<=10000; i++){
        
        for(int i=0; i<n; i++){
            a[i] = rand() % (n*10);
        }
        
        insertionSort(a,n,&stepComps,&stepSwaps);
        freq[stepSwaps]++;
        sumComps += stepComps;
        sumSwaps += stepSwaps;

    }

    *compsAvg = sumComps/10001;
    *swapsAvg = sumSwaps/10001;
    
    for(int i = 0; i<n; i++){
        printf("%5d",freq[i]);
    }
    return 0;

    // printf("CompsAvg = %d\n",*compsAvg);
    // printf("SwapsAvg = %d\n",*swapsAvg);
    
}

int main(){
    int a[100] = {7,5,2,6,1};
    int n = 5;
    int comps, shift = 0;

    int compsAvg, swapAvg = 0;
    printf("Insertion Sort\n");
    insertionSort(a,n,&comps,&shift);
    // complexity(n,&compsAvg,&swapAvg);
    return 0;
}