# KDX 시각화경진대회


## 개요
### 1. 상세설명
* 전략적 온라인 광고 노출을 위한 OS유형별 소비패턴 분석.

### 2. 데이터셋 구성
* Mcorporation.zip


### 3. 참가
* 인원 : 3명
* 작업툴 : R
* 기간 : 20.10.10 ~ 20.10.24

## 프로그래밍

### 1. 페키지 라이브러리 하기

```R
library(tidyverse) # 데이터 가공 및 시각화
library(readxl) # 엑셀파일 불러오기 패키지
library(ggplot2)
library(lubridate)
library(dplyr)
library(zoo)
library(modelr)
options(na.action = na.warn)
library(pastecs)
library(WRS)
library(utils)
```



