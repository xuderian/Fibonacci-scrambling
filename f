# @Time : 2023/4/23 14:42
# @Author : xuchen
import cv2
import numpy as np

def fibonacci(img):
    r, c = img.shape
    p = np.zeros((r, c), np.uint8)
    for i in range(r):
        for j in range(c):
            x = (i + j) % r
            y = i % c
            p[i, j] = img[x, y]
    return p

def defibonacci(img):
    r, c = img.shape
    p = np.zeros((r, c), np.uint8)
    for i in range(r):
        for j in range(c):
            x = j % r
            y = (i - j) % c
            p[i, j] = img[x, y]
    return p

def main():
    img = 'D:\Python\Python_code\pythonProject\image_encryption\gray.png'
    image = cv2.imread(img)
    GrayImage = cv2.cvtColor(image,cv2.COLOR_BGR2GRAY)
    print(GrayImage.shape)
    for i in range(10):
        print(i,end=' ')
        GrayImage = fibonacci(GrayImage)
    for i in range(10):
        GrayImage = defibonacci(GrayImage)
    cv2.imshow("myImage", GrayImage)
    cv2.waitKey(0)

if __name__ == '__main__':
        main()
