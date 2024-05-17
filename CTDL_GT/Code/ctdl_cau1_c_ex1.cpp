#include<stdio.h>
#include<stdlib.h>
#define MAX 100

int search(int a[], int n, int val){
    int count = 0;
    for(int i=0; i<n; i++){
		count++;
        if(a[i] == val){
			printf("Count: %d\t",count);
            return i;
		}
	}
	return -1;
}


int main(){
    int a[MAX] = {2, 5, 1, 7, 9, 0, 3, 6, 8, 4};
    int n = 10, m = 10;
    int value;
    int index;
    for(int i = 0; i<m; i++){
        value = rand() % n;
        index = search(a,n,value);
        printf("Found %d at %d\n", value, index);
    }
    

}