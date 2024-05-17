#include<stdio.h>
#include <stdlib.h>

void xuat(int a[], int n){
    for(int i=0; i<n; i++){
        printf("%d\t",a[i]);
        
    }
    printf("\n");
}

void bubbleSort(int a[], int n){
    for(int i = 1;n-1>0;n--,i++){
        int swap = 0; 
        int comps = 0;
        int temp;
        //Số round:
        printf("\nRound %d:\n",i);
        for(int i=0; i<n-1; i++){ // i<n-1 vì """Số Cặp"""
            comps++;
            
            if(a[i]>a[i+1]){
                temp = a[i] ;
                a[i] = a[i+1];
                a[i+1] = temp;
                swap++;
                
            }
        }
        printf("\nComps = %d\n",comps);
        printf("\nSwaps = %d\n",swap);
        xuat(a,n);
    }
}

int main(){
    int a[100] = {7,5,2,6,1};
    int n = 5;
    int swaps = 0; 
    int comps = 0;

    int compsAvg, swapsAvg;

    printf("Bubble Sort\n");
    xuat(a,n);
    bubbleSort(a,n);
    xuat(a,n);
    // complexity(n,&compsAvg,&swapsAvg);
}