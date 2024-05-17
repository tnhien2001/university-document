#include<stdio.h>
#define MAX 100

//Xuat ham:
void xuat(int a[], int *n){
	for(int i=0; i<*n; i++){
		printf("%d\t",a[i]);
	}
}


//C1: De tim 1 gia tri value trong 1 mang so nguyen a co n phan tu
//Neu tim thay thi tra ve vi tri cua phan tu do trong mang. Nguoc lai tra ve -1.
int search(int a[], int n, int val){
	for(int i=0; i<n; i++){
		if(a[i] == val){
			return 1;
		}
	}
	return -1;
}

//C2: De chen 1 gia tri value tai vi tri index vao 1 mang so nguyen a co n phan tu.
// Vi tri chen co the thay doi tu 0 den n.
// Khong can kiem tra vi tri chen co vuot qua kich thuoc cua mang,
// chỉ cần kiểm tra vị trí index nằm trong đoạn 0 và n.
int insert(int a[], int* n, int value, int index) {
	if (index > 0 && index < *n) {
		for (int i = *n - 1; i >= index; i--) {
			a[i+1] = a[i];
		}
		a[index] = value;
		(*n)++;
		return 1;
	}
	return 0;
}

//C3: Xoa du lieu tai vi tri index vao 1 mang so nguyen a co n phan tu.
// Vi tri xoa co the thay doi tu 0 den n-1.
int xoa(int a[], int *n, int index){
	for(int i=index; i<*n-1; i++){
		    a[i] = a[i+1];
		}
}

//C4: Để chèn một giá trị value vào một tập hợp được cài đặt bằng mảng số nguyên a có n phần tử.
//Không cần kiểm tra mảng có bị vượt quá kích thước.
int insertSet(int a[], int *n, int value){
	a[*n] = value;
	(*n)++;
}

int main(){
    int a[MAX] = {0, 1, 2, 4, 5, 6};
	int n=6;
	
	//Test câu 1:
	// printf("\nTest cau 1:\n");
	// printf("%d\n",search(a,n,10));

	//test câu 2:
	// printf("\nTest cau 2:\n");
	// insert(a,&n,9,3);
	// xuat(a,&n);


	//Test câu 3:
	// printf("\nTest cau 3:\n");
	// xoa(a,&n,2);
	// xuat(a,&n);


	//Test câu 4:
	printf("\nTest cau 4:\n");
	insertSet(a,&n,9);
	xuat(a,&n);

    return 0;
}