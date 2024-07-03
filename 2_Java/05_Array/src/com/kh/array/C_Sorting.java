package com.kh.array;

import java.util.Arrays;

public class C_Sorting {

/*
 * 선택 정렬(selection sort)
 * - 가장 작은 데이터를 선택해 맨 앞에 있는 데이터와 바꾸고,
 *   그다음 작은 데이터를 선택해 앞에서 두 번째 데이터와 바꾸는 과정을 반복
 * - 배열을 전부 탐색하여 최소값을 고르고 왼쪽부터 채워나가는 방식의 정렬
 * - 데이터 양이 적을 때 좋으! 하지만 100개 이상인 경우 급격한 속도 저하   
 * */
  public void method4() {
	  int [] arr = {7, 5, 9, 0, 3, 1, 6, 2, 4, 8};
	  
	  // 비교 주체 비교 대상
	  // i = 0  j = 1 ~ 9
	  // i = 1  j = 2 ~ 9
	  
	  // 비교 주체
	  for(int i = 0; i < arr.length; i++) {
		  // 비교대상
		  for(int j = 0; j < arr.length; j++) {
			  if(arr[i] > arr[j]) {
				  int tmp = arr[i];
				  arr[i] = arr[j];
				  arr[j] = tmp;
			  }
		  }
	  }
	  System.out.println(Arrays.toString(arr));
	  
  }
  /*
   * 삽입정렬(insertion sort): 동작 원리는 직관적, 선택 정렬에 비해서는 구현 난이도가 높아짐
   * - 정렬 알고리즘에서 가장 간단하고 디본이 되는 알고리즘
   * - 필요할 땜나 위치를 바꾸므로 '데이터가 거의 정렬되어 있을 때' 효율적
   * */
  public void method5() {
	  int[] arr = {7, 5, 9, 0, 3, 1, 6, 2, 4, 8};
	  
	  //비교주체 비교대상
	  // i = 0  j = x <-- 비교하지 않음
	  // i = 1  j = 0
	  // i = 2  j = 0 ~ 1
	  
	  // 비교주체
	  for(int i = 1; i < arr.length; i++) {
		  // 비교대상
		  for(int j = 0; j < i; j++) {
			  if(arr[j] > arr[i]) {
				  int tmp = arr[i];
				  arr[i] = arr[j];
				  arr[j] = tmp;
				  
			  }
			  
		  }
	  }
	  
	  
  }
  
  /*
   * 버블정렬
   * - 인접한 두 수를 비교해서 큰 수를 뒤로 보내는 것이 특징
   * - 구현이 쉽다는 장점이 있지만, 다른 정렬에 비해 정렬 속도가 느리며,
   *   역순으로 정렬할 때 가장 느린 속도를 가짐
   * */
  
  public void method6() {
	  int[] arr = {7, 5, 9, 0, 3, 1, 6, 2, 4, 8};
	  
	  // 비교주체 비교대상
	  // i=9  j=0~8
	  // i=8  j=0~7
	  
	  // 비교주체
	  for(int i=arr.length-1; i >=0; i--) {
		  // 비교대상
		  for(int j=0; j < arr.length - 1; j++) {
			  if(arr[j] > arr[j+1]) {
				  int tmp = arr[j];
				  arr[j] = arr[j+1];
				  arr[j+1] = tmp;
			  }
		  }
	  }
  }
  
}


  