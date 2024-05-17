''' Họ và tên: Trịnh Ngọc Hiến
    MSSV: 19110315
    Bài tập tuần 1
'''

import numpy as np
import statistics as sta
import math
import scipy.stats as scipy

#Hàm mean: bằng thư viện statistic (sta.mean)
def trungbinh(a):
    mean = sta.mean(a)    
    return mean

#Hàm tính trung vị (median): bằng thư viện statistic (sta.median)
def trungvi(a):
    median = sta.median(a)
    return median

#Hàm tính phương sai(variance): bằng thư viện statistic (sta.variance)
def phuongsai(a):
    var = sta.variance(a)
    return var

#Hàm tính độ lệch chuẩn(Standard deviation): bằng thư viện statistic (sta.stdev)
def lechchuan(a):
    stdev = sta.stdev(a)
    return stdev

#Hàm xây dựng khoảng tin cậy cho trung bình (1 mẫu):
def KTCchoTB(a):
    print("\n\t\tKhoảng tin cậy cho trung bình")
    n=len(a)
    print("Số phần tử của mẫu:",n)
    trungbinhmau = trungbinh(a)
    print("Trung bình của mẫu là:",trungbinhmau)
    do_lech_chuan = lechchuan(a)
    khoang_tin_cay = int(input("Nhập khoảng tin cậy (%): "))
    alpha = 1-(khoang_tin_cay/100)
    sigma = float(input("Nhập sigma: "))
    z = 1-(alpha/2)
    print("z là: ",z)
    
    if sigma != 0:
        #TH1: n>=30 và sigma đã biết
        z_value = scipy.norm.ppf(z)
        print("Giá trị thực của z là:",z_value)
        e= float(z_value)*(float(sigma)/float(math.sqrt(n)))
        print("Giá trị của e là:",e)
        #Tính khoảng tin cậy:
        ktc = (trungbinhmau - e, trungbinhmau + e)
        #Trả về khoảng tin cậy:
        print("Khoảng tin cậy cần tìm là:",ktc)

    else:
        #TH2: n>=30 và sigma chưa biết
        if n>30 or n==30: 
            z_value = scipy.norm.ppf(z)
            print("Giá trị thực của z là:",z_value)
            e= float(z_value)*(float(do_lech_chuan)/float(math.sqrt(n)))
            print("Giá trị của e là:",e)
            ktc = (trungbinhmau - e, trungbinhmau + e)
            #Trả về khoảng tin cậy:
            print("Khoảng tin cậy cần tìm là:",ktc)    

        #TH3: n<30, sigma chưa biết, X có phân phối chuẩn
        else: 
            n_tudo = n-1
            t = 1-(alpha/2)
            print("Giá trị của t là:",t)
            t_value = scipy.t.ppf(t,n_tudo)
            print("Giá trị thực của t là:",t_value)
            e = float(t_value)*(float(do_lech_chuan)/float(math.sqrt(n)))
            print("Giá trị của e là:",e)
            ktc = (trungbinhmau - e, trungbinhmau + e)
            #Trả về khoảng tin cậy:
            print("Khoảng tin cậy cần tìm là:",ktc)
    
       
def KD_TB():
    print("\n\t\tKiểm định giả thuyết cho kỳ vọng")
    n = int(input("Nhập số lượng phần tử của mẫu: "))
    trungbinhmau = float(input("Nhập trung bình mẫu: "))
    
    mu0 = float(input("Nhập giá trị của muy: "))
    muc_y_nghia = float(input("Nhập mức ý nghĩa (%): "))
    alpha = muc_y_nghia/100
    sigma = float(input("Nhập sigma:"))

    if sigma == 0: #Kiểm định giả thuyết TH không biết sigma
        print("\t\tCác trường hợp kiểm định giả thuyết cho kỳ vọng.\n\nTH1: muy khác muy0 (1) \nTH2: muy < muy0 (2) \nTH3: muy > muy0 (3)")
        th_kyvong = int(input("Nhập trường hợp muốn tính cho kỳ vọng: "))  
        if n<30 or n==30:#Mẫu nhỏ:
            if th_kyvong == 1:
                s = float(input("Nhập độ lệch chuẩn:"))
                n_tudo = n-1
                t = 1-(alpha/2)
                print("t là: ",t)
                t_value = scipy.t.ppf(t,n_tudo)
                print("Giá trị thực của t là:",t_value)
                t0 = float(trungbinhmau - mu0) / (float(s)/float(math.sqrt(n)))
                print("Giá trị của t0 là:",t0)
                if t0 < -t_value or t0 > t_value:
                    print("Bác bỏ Ho.")
                else:
                    print("Không đủ cơ sở để bác bỏ Ho.")
            
            if th_kyvong == 2:
                s = float(input("Nhập độ lệch chuẩn:"))
                n_tudo = n-1
                t = (1-alpha)
                print("t là: ",t)
                t_value = scipy.t.ppf(t,n_tudo)
                print("Giá trị thực của t là:",t_value)
                t0 = float(trungbinhmau - mu0) / (float(s)/float(math.sqrt(n)))
                print("Giá trị của t0 là:",t0)
                if t0 < -t_value :
                    print("Bác bỏ Ho.")
                else:
                    print("Không đủ cơ sở để bác bỏ Ho.")

            if th_kyvong == 3:
                s = float(input("Nhập độ lệch chuẩn:"))
                n_tudo = n-1
                t = (1-alpha)
                print("t là: ",t)
                t_value = scipy.t.ppf(t,n_tudo)
                print("Giá trị thực của t là:",t_value)
                t0 = float(trungbinhmau - mu0) / (float(s)/float(math.sqrt(n)))
                print("Giá trị của t0 là:",t0)
                if t0 > t_value :
                    print("Bác bỏ Ho.")
                else:
                    print("Không đủ cơ sở để bác bỏ Ho.")

        else:#Mẫu lớn:
            if th_kyvong == 1:
                s = float(input("Nhập độ lệch chuẩn:"))
                z = 1-(alpha/2)
                print("z là: ",z)
                z_value = scipy.norm.ppf(z)
                print("Giá trị thực của z là:",z_value)
                z0 = float(trungbinhmau - mu0) / (float(s)/float(math.sqrt(n)))
                print("Giá trị của z0 là:",z0)
                if z0 < -z_value or z0 > z_value:
                    print("Bác bỏ Ho.")
                else:
                    print("Không đủ cơ sở để bác bỏ Ho.")
            
            if th_kyvong == 2:
                s = float(input("Nhập độ lệch chuẩn:"))
                z = (1-alpha)
                print("z là: ",z)
                z_value = scipy.norm.ppf(z)
                print("Giá trị thực của z là:",z_value)
                z0 = float(trungbinhmau - mu0) / (float(s)/float(math.sqrt(n)))
                print("Giá trị của z0 là:",z0)
                if z0 < -z_value :
                    print("Bác bỏ Ho.")
                else:
                    print("Không đủ cơ sở để bác bỏ Ho.")

            if th_kyvong == 3:
                s = float(input("Nhập độ lệch chuẩn:"))
                z = (1-alpha)
                print("z là: ",z)
                z_value = scipy.norm.ppf(z)
                print("Giá trị thực của z là:",z_value)
                z0 = float(trungbinhmau - mu0) / (float(s)/float(math.sqrt(n)))
                print("Giá trị của z0 là:",z0)
                if z0 > z_value :
                    print("Bác bỏ Ho.")
                else:
                    print("Không đủ cơ sở để bác bỏ Ho.")

    else: 
        #Kiểm định giả thuyết cho kỳ vọng trường hợp biết sigma:
        print("\t\tCác trường hợp kiểm định giả thuyết cho kỳ vọng.\n\nTH1: muy khác muy0 (1) \nTH2: muy < muy0 (2) \nTH3: muy > muy0 (3)")
        th_kyvong = int(input("Nhập trường hợp muốn tính cho kỳ vọng: "))  
        if th_kyvong == 1:
            z = 1-(alpha/2)
            print("z là: ",z)
            z_value = scipy.norm.ppf(z)
            print("Giá trị thực của z là:",z_value)
            z0 = float(trungbinhmau - mu0) / (float(sigma)/float(math.sqrt(n)))
            print("Giá trị của z0 là:",z0)
            if z0 < -z_value or z0 > z_value:
                print("Bác bỏ Ho.")
            else:
                print("Không đủ cơ sở để bác bỏ Ho.")
            
        if th_kyvong == 2:
            z = (1-alpha)
            print("z là: ",z)
            z_value = scipy.norm.ppf(z)
            print("Giá trị thực của z là:",z_value)
            z0 = float(trungbinhmau - mu0) / (float(sigma)/float(math.sqrt(n)))
            print("Giá trị của z0 là:",z0)
            if z0 < -z_value :
                print("Bác bỏ Ho.")
            else:
                print("Không đủ cơ sở để bác bỏ Ho.")

        if th_kyvong == 3:
            z = (1-alpha)
            print("z là: ",z)
            z_value = scipy.norm.ppf(z)
            print("Giá trị thực của z là:",z_value)
            z0 = float(trungbinhmau - mu0) / (float(sigma)/float(math.sqrt(n)))
            print("Giá trị của z0 là:",z0)
            if z0 > z_value :
                print("Bác bỏ Ho.")
            else:
                print("Không đủ cơ sở để bác bỏ Ho.")
        
            


    
#Hàm main:
#Nhập mảng:
a=[]
n= int(input("Nhập kích thước của mảng: "))
for i in range(n):
    temp= float(input("Nhập phần tử thứ " + str(i+1)+" của mảng : "))
    a.append(temp)

#Tính các hàm:
print("Mảng vừa nhập là: ",a)
KTCchoTB(a)
KD_TB()


