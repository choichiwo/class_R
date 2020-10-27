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

```
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

### 2. 데이터 불러오기
#### 2-1 다중 엑셀파일 불러오기
```
files <- list.files(path = "data/Mcorporation/상품 카테고리 데이터_KDX 시각화 경진대회 Only/", pattern = "*.xlsx", full.names = TRUE) # 다중 엑셀파일 불러오기

glimpse(files)
```

#### 2-2 # KDX_CONTEST_파일정의서.xlsx : 파일 제외

```
products <- sapply(files[2:65], read_excel, simplify=FALSE) %>% 
  bind_rows(.id = "id") %>% 
  select(-id)

glimpse(products)
```

### 3. 기술적 통계량으로 분석하기

#### 3-1 고객성별 요약

```
products %>%
  filter(고객성별 != "없음") %>%
  select(고객성별, 구매금액, 구매수) %>%
  group_by(고객성별) %>%
  summarize(구매금액평균 = mean(구매금액), 구매수평균 = mean(구매수)) %>%
  mutate(금액비율 = 구매금액평균 * 100 / sum(구매금액평균), 수량비율 = 구매수평균 * 100 / sum(구매수평균))
```
#### 3-2 OS유형별 요약

```
products %>%
  filter(OS유형 != "없음") %>%
  select(OS유형, 구매금액, 구매수) %>%
  group_by(OS유형) %>%
  summarize(구매금액평균 = mean(구매금액), 구매수평균 = mean(구매수)) %>%
  mutate(금액비율 = 구매금액평균 * 100 / sum(구매금액평균), 수량비율 = 구매수평균 * 100 / sum(구매수평균))
```
