import numpy as np
import scipy.stats as scipy

def mo_hinh_hoi_qui_tt(X,Y,level):
    beta = linalg.inv(transpose(X).dot(X)).dot(transpose(X)).dot(Y)
    print("Ma trận beta là:")
    return beta
    C = linalg.inv(transpose(X).dot(X))
    C_cheo = np.diag(C)
    y_mu = X.dot(beta)
    e = Y - y_mu
    sigma = (transpose(e).dot(e))/(len(X)-(13+1))
    SE_beta = sigma*C_cheo
    alpha  = 1 - (level/100)
    t = alpha/2
    tu_do = len(X) - (13 + 1)
    t_value = abs(scipy.t.ppf(t,tu_do))
    VT = beta - t_value*SE_beta
    VT = beta + t_value*SE_beta
    print("Khoảng tin cậy cho Bj là:")
    return (VT,VP)

def predict(X,Y,x,level):
    beta = linalg.inv(transpose(X).dot(X)).dot(transpose(X)).dot(Y)
    y_mu = x.dot(beta)
    print("Giá trị của y mũ: ")
    return y_mu
    e = Y - y_mu
    sigma = (transpose(e).dot(e))/(len(X)-(13+1))
    C = linalg.inv(transpose(X).dot(X))
    C_cheo = np.diag(C)
    t_m = sigma*(1+transpose(x).dot(C).dot(x))
    alpha  = 1 - (level/100)
    t = alpha/2
    tu_do = len(X) - (13 + 1)
    t_value = abs(scipy.t.ppf(t,tu_do))
    VT1 = y_mu - e
    VP1 = y_mu + e
    print("Khoảng tin cậy cho y:")
    return (VT1,VP1)

if _name_ == "_main_":
	data = np.loadtxt('bostonh.dat')
	X =np.append(np.ones((len(data),1)),data[:,:13],axis =1)
	Y = data.transpose()[-1].reshape(len(data),1)
	do_tin_cay = float(input("Nhap do tin cay:  "))
	level= 1- (do_tin_cay/100)
	#Ham mo hinh hoi quy tuyen tinh 
	print(mo_hinh_hoi_qui_tt(X,Y,level))
	#Nhap du lieu ma tran x 
	n=int(input("Nhap so luong phan tu cua du lieu la: "))
    array=[]
    for i in range(n):
        array.append(float(input("Nhập phần tử thứ " + str(i+1) +" của mảng: ")))
    x=1.0*np.array(array)
    #Ham predict
    print(predict(X,Y,x,level))
