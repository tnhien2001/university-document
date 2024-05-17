#include<stdio.h>
#include <stdlib.h>

void xuat(int a[], int n){
    for(int i=0; i<n; i++){
        printf("%d\t",a[i]);
        
    }
    printf("\n");
}

int selectionSort(int a[], int n, int *swaps, int *comps){
    *swaps = 0;
    *comps = 0;
    for(int i=0; i<n-1; i++){
        // *swaps = 0;
        // *comps = 0;
        printf("\nRound: %d\n",i+1);
        int min = i;
        
        for(int j = min+1; j<n; j++){
            (*comps)++;
            
            if(a[min]> a[j]){
                min = j;
                
            }
        }    
        
        if(min != i){
                (*swaps)++;
                int temp = a[i];
                a[i] = a[min];
                a[min] = temp;
                
        }
            
        
        printf("\nComps = %d\n",*comps);
        printf("\nSwaps = %d\n",*swaps);
        xuat(a,n); 
    }
}

int complexity(int n, int *compsAvg, int *swapsAvg){
    int a[100];
    int comps, swaps;
    
    int sumComps = 0;
    int sumSwaps = 0;

    for(int i=0; i<=10000; i++){
        
        for(int i=0; i<n; i++){
            a[i] = rand() % (n*10);
        }
        
        selectionSort(a,n,&comps,&swaps);
        sumComps += comps;
        sumSwaps += swaps;

    }

    *compsAvg = sumComps/10001;
    *swapsAvg = sumSwaps/10001;
    
    printf("CompsAvg = %d\n",*compsAvg);
    printf("SwapsAvg = %d\n",*swapsAvg);
    
}

int main(){
    int a[100] = {7,5,2,6,1};
    int n = 5;
    int swaps = 0;
    int comps = 0;

    int compsAvg, swapsAvg = 0;

    xuat(a,n);
    selectionSort(a,n,&swaps,&comps);
    
    // complexity(n,&compsAvg,&swapsAvg);
    
    return 0;
}    