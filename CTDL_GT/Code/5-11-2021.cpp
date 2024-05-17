#include<stdio.h>

int binarySearch(int a[], int n, int value){
    int l, u, m;
    l = 0; u = n-1; 

    do{
        m = (l+u)/2;
        if(value == a[m]){
            return m;
        }
        else{
            if(value < a[m]){
                u = m - 1;
            }
            else
                l = m + 1;
        }
        printf("\nLower = %d\t",l);
        printf("Upper = %d\t",u);
        printf("Middle = %d\t",m);
    }while(l <= u);


    // for(int i=0; i<n; i++){
    //     if(u > value){
    //         u = u/2; // = 49.5
    //         m = (l+u)/2;
    //         if(u > value){

    //         }
    //     }     

    // }

    return -1;
}

int main(){
    int a[200], n = 101;
    int value = 30;
    for(int i=0; i<n; i++){
        a[i] = i;
    }

    for(int i=0; i<n; i++){
        printf("%d ",a[i]);
    }

    int index = binarySearch(a,n,value);
    printf("\nFound at %d\n",index);
    return 0;
}

