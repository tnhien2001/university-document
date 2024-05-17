#include<stdio.h>

//C1: Để chèn một giá trị value vào một mảng số nguyên
// theo thứ tự tăng dần a có n phần tử.
void insert(int a[], int *n, int value){
    for(int i=*n-1; i>=value-1; i--){
        a[i+1] = a[i];
    }
    (*n)++;
    
    for(int i=*n-1; i>0; i--){
        if(a[0] == 0){
            a[value] = value;
        }
        else {
            a[value-1] = value;
            }
    }
    
}

//C2: Để tìm một giá trị value trong một mảng số nguyên 
//có thứ tự tăng dần a có n phần tử theo kĩ thuật tìm kiếm tuần tự. 
//Nếu tìm thấy thì trả về vị trí của phần tử đó trong mảng. 
//Ngược lại thì trả về -1.
int linearSearch(int a[], int n, int value){
    for(int i=0; i<n; i++){
        if(a[i] == value){
            return i;
        }
    }
    return -1;
}

//C3: Để tìm một giá trị value trong một mảng số nguyên 
//có thứ tự tăng dần a có n phần tử theo kĩ thuật tìm kiếm nhịphân.
//Nếu tìm thấy thì trả về vị trí của phần tử đó trong mảng. 
//Ngược lại thì trả về -1.
int binarySearch(int a[], int n, int value){
    for(int i=0; i<n; i++){
        int l, u, m;
        l = 0; u = n-1;
        m = (l+u)/2;
        if(value == a[l]) return l;
        if(value == a[u]) return u;
        if(value == a[m]) return m;

        if(value > a[m]){
            l = m+1;
            m = (l+u)/2;
            if(value == a[m]) return m;
            if(value == a[l]) return l;
        }

        if(value < a[m]){
            u = m-1;
            m = (l+u)/2;
            if(value == a[m]) return m;
            if(value == a[u]) return u;
        }
    }

    return -1;
}

//Xuất hàm:
void xuat(int a[], int *n){
	for(int i=0; i<*n; i++){
		printf("%d\t",a[i]);
	}
}

int main(){
    int a[100] = {0,10,11,22,23,57};
    int n=6;
    
    // insert(a,&n,3);
    // xuat(a,&n);
    // printf("\n%d",linearSearch(a,n,13));

    int result = binarySearch(a,n,11);
    printf("Result is: %d",result);
    return 0;
}