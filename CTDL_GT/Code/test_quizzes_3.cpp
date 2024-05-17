#include<stdio.h>
#include <stdlib.h>

void xuat(int a[], int n){
    for(int i=0; i<n; i++){
        printf("%d\t",a[i]);
        
    }
    printf("\n");
}

//C1: để sắp xếp một mảng số nguyên a có n phần tử theo thứ tự tăng dần.
//Các tham số comps và swaps sau khi hàm chạy xong
//sẽ nhận giá trị lần lượt là số phép so sánh, hoán đổi.
void bubbleSort(int a[], int n, int *comps, int *swaps){
    *swaps = 0;
    *comps = 0;
    for(;n-1>0;n--){    
        
        for(int i=0; i<n-1; i++){ 
            (*comps)++;
            
            if(a[i]>a[i+1]){
                int temp = a[i] ;
                a[i] = a[i+1];
                a[i+1] = temp;
                (*swaps)++;
                
            }
        
        }
         
    }  
    printf("\nComps = %d\n",*comps);
    printf("\nSwaps = %d\n",*swaps);    
}

//C2: để tính độ phức tạp (đếm số bước - steps - trung bình) 
//của thuật toán trong câu 1:

//1. Cho thuật toán ở câu 1 chạy trên 10k lần.
//2. Mỗi lần tạo mảng nguyên a ngẫu nhiên với n phần tử
//với giá trị nằm trong [0, 10*n).
//3. Sắp xếp mảng a bằng hàm trong câu 1 để tính số so sánh,
//hoán đổi.
//4. Cộng dồn các phép so sánh và hoán đổi 
//trong những lần gọi hàm của câu 1.
// 5. Cuối cùng tính trung bình số phép so sánh, hoán đổi; 
//và lưu vào các tham số compsAvg, swapsAvg.

int complexity(int n, int *compsAvg, int *swapsAvg){
    int a[100];
    int comps, swaps;
    
    int sumComps = 0;
    int sumSwaps = 0;

    for(int i=0; i<=10000; i++){
        
        for(int i=0; i<n; i++){
            a[i] = rand() % (n*10);
        }
        
        bubbleSort(a,n,&comps,&swaps);
        sumComps += comps;
        sumSwaps += swaps;

    }

    *compsAvg = sumComps/10001;
    *swapsAvg = sumSwaps/10001;
    
    printf("CompsAvg = %d\n",*compsAvg);
    printf("SwapsAvg = %d\n",*swapsAvg);
    
}



int main(){
    int a[100] = {5,6,3,2,1,4};
    int n = 6;
    int swaps = 0; 
    int comps = 0;

    int compsAvg, swapsAvg;


    xuat(a,n);
    bubbleSort(a,n,&comps,&swaps);
    xuat(a,n);
    // complexity(n,&compsAvg,&swapsAvg);
}