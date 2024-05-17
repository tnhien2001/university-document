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

int insertEnd(int a[], int *n, int val){
	if(*n < MAX){
		a[*n] = val;
		(*n)++;
		return 1;
	}
	return 0;
}

//de xoa du lieu tai vi tri index vao 1 mang so nguye.
// a co n phan tu. Vi tri xoa co the thay doi tu 0 den n-1.
int xoa(int a[], int *n, int index){
	for(int i=0; i<(*n); i++){
		a[index] = a[index + 1];
		a[*n] = 0;
		return 1;
	}
	return -1;
}

int main(){
	int a[MAX] = {0, 1, 2, 3, 4, 5};
	int n=6;
	
	printf("%d",xoa(a,&n,0));
	/*
	if(search(a,n,3)){
		printf("Found");	
	}else
	printf("Not found");
	*/


	/*
	if(insertEnd(a,&n,3) == 0){
		printf("Full");
	}
	*/

	/*
	insertBeginning(a,n,3);
	for(int i=0; i<n; i++){
		printf("%4d",a[i]);
	}
	*/	
	
	return 0;
}
