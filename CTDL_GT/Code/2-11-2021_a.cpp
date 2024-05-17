//Chương 2: Why Algorithms Matter
#include<stdio.h>


int insert(int a[], int *n, int value){
    // Tim vi tri can chen
    int index = 0;
    for(int i=0; i<*n; i++){
       //value co nhat thiet phai > =  hay k?
       if(value > a[i]){ 
           index++;
       }
       else break;
       printf("index = %d\n",index);
    }
    //Chen vao vi tri cua index:
    if(index > 0 && index < *n){
        for(int i=0; i< *n; i++){
            a[index] = value; 
        }
    }
}
int search(int a[], int n, int val){
	int index = 0;
    while(index < n){
        if(a[index] == val){
            return index;
        }
        
        if(a[index] > val){
            return -1;
        }

        index++;
    }
    return -1;
}


int main(){
    int a[100] = {2, 4, 6, 8, 10, 12};
    int n = 6;
    int value = 8;
    insert(a,&n,value);
    
    // for(int i=0; i<n; i++){
    //     printf("%5d",a[i]);
    // }
    
    // int index = search(a,n,202);
    // printf("index = %d",index);

    return 0;
}

