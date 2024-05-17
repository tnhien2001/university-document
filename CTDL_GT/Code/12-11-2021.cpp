#include<stdio.h>

/*
Phuong phap sap xep:
so sanh = n - 1;
0 <= swap <= n - 1;
=> + swap = 0 khi sap xep theo chieu tang.
   + swap < n - 1 khi sap xep theo chieu giam.

round = n - 1: So vong de sap xep.
*/
void bubleSort(int a[], int n){
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
    }  
        
    
    // swap = 0; 
    // comps = 0;
    // //Round 2:
    // printf("\nRound 2:\n");
    // for(int i=0; i<n-1; i++){
    //     comps++;
    //     if(a[i]>a[i+1]){
    //         temp = a[i] ;
    //         a[i] = a[i+1];
    //         a[i+1] = temp;
    //         swap++;
            
    //     }
    // }
    // printf("\nComps = %d\n",comps);
    // printf("\nSwaps = %d\n",swap);
}

void xuat(int a[], int n){
    for(int i=0; i<n; i++){
        printf("%d\t",a[i]);
        
    }
    printf("\n");
}

int main(){// 5 6 2 7 3 1 -> comps = 5, swap = 3,
//5 2 6 3 1 7 -> comps =5 ,swaps = 3
//2 5 3 1 6 7 -> comps = 5, swaps 2
//2 3 1 5 6 7 -> comps =5, swap = 1
//2 1 3 5 6 7 -> comps = 5, swap =1
    int a[100] = {1, 2, 3, 4, 5, 6};
    int n = 6;

    xuat(a,n);
    bubleSort(a,n);
    xuat(a,n);

}