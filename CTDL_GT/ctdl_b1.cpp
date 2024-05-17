#include<stdio.h>
#define MAX 100

/*
*search an item
input:
- a: array
- n: element
return:
- 1:found
- 0: not found
*/

int search(int a[], int n, int val){
	for(int i=0; i<n; i++){
		if(a[i] == val){
			return 1;
		}
	}
	return 0;
}

void insertBeginning(int a[], int n, int val){
	for(int i=n; i>n-1; i--){
		a[i+1] = a[i];	
	}
	a[0] = val;
}

int insertEnd(int a[], int* n, int val){
	if(*n < MAX){
		a[*n] = val;
		(*n)++;
		return 1;
	}
	return 0;
}


int main(){
	int a[MAX] = {1, 2};
	int n=2;
	/*
	if(search(a,n,3)){
		printf("Found");	
	}else
	printf("Not found");
	
	
	
	if(insertEnd(a,&n,3) == 0){
		printf("Full");
	}
	*/
	
	insertBeginning(a,n,3);
	for(int i=0; i<n; i++){
		printf("%4d",a[i]);
	}
		
	
	return 0;
}
