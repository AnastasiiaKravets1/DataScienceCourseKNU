## 1. Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical.

	character <- "Hello World!"
	numeric <- 9
	integer <- 8L
	complex <- 7 + 6i
	logical <- TRUE

Результат: 

	> character 
	[1] "Hello World!"
	> numeric 
	[1] 9
	> integer 
	[1] 8
	> complex 
	[1] 7+6i
	> logical 
	[1] TRUE

## 2. Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 2.71, 0, 13; 100 значень TRUE.

	vector21 <- 5:75
	vector22 <- c(pi, 2.71, 0, 13)
	vector23 <- rep(TRUE, 100)

Результат: 

	> vector21 
		[1]  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42
		[39] 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75
	> vector22 
		[1]  3.141593  2.710000  0.000000 13.000000
	> vector23 
		[1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
		[24] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
		[47] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
		[70] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
		[93] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE

## 3. Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind:

0.5 | 1.3 | 3.5
---|---|---
3.9 | 131 | 2.8
0 | 2.2 | 4.6
2 | 7 | 5.1

matrix:

	matrix <- matrix(c(0.5, 3.9, 0, 2, 1.3, 131, 2.2, 7, 3.5, 2.8, 4.6, 5.1), nrow = 4, ncol = 3)
	matrix

Результат:

⠀ | [,1] | [,2] | [,3]
---|---|---|---
[1,] | 0.5 | 1.3 | 3.5
[2,] | 3.9 | 131.0 | 2.8
[3,] | 0.0 | 2.2 | 4.6
[4,] | 2.0 | 7.0 | 5.1

---

cbind:

a <- c(0.5, 3.9, 0, 2)
b <- c(1.3, 131, 2.2, 7)
c <- c(3.5, 2.8, 4.6, 5.1)
cbind <- cbind(a, b, c)
cbind

Результат:

⠀ | a | b | c
---|---|---|---
[1,] | 0.5 | 1.3 | 3.5
[2,] | 3.9 | 131.0 | 2.8
[3,] | 0.0 | 2.2 | 4.6
[4,] | 2.0 | 7.0 | 5.1

---

rbind:

a <- c(0.5, 1.3, 3.5)
b <- c(3.9, 131, 2.8)
c <- c(0, 2.2, 4.6)
d <- c(2, 7, 5.1)
rbind = rbind(a, b, c, d)
rbind

Результат:

⠀ | [,1] | [,2] | [,3]
---|---|---|---
a | 0.5 | 1.3 | 3.5
b | 3.9 | 131.0 | 2.8
c | 0.0 | 2.2 | 4.6
d | 2.0 | 7.0 | 5.1

## 4. Створити довільний список (list), в який включити всі базові типи.

	list4 <- list(1, 2L, FALSE, 3 + 4i, "text")
	list4

Результат:

	[[1]]
	[1] 1

	[[2]]
	[1] 2

	[[3]]
	[1] FALSE

	[[4]]
	[1] 3+4i

	[[5]]
	[1] "text"

## 5. Створити фактор з трьома рівнями «baby», «child», «adult».

	vector5 <- c(rep("baby", 3), rep("child", 5), rep("adult", 8))
	factor5 <- factor(ageVector, levels = c("baby", "child", "adult"))
	factor5

Результат:

	[1] baby  baby  baby  child child child child child adult adult adult adult adult adult adult adult
	Levels: baby child adult

## 6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA.

		vector6 <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)

Результат: 

	> vector6 
		[1]  1  2  3  4 NA  6  7 NA  9 NA 11
	> which(is.na(vector6 ))[1]
		[1] 5
	> length(which(is.na(vector6)))
		[1] 3

## 7. Створити довільний data frame та вивести в консоль.

	a7 <- c(9, 5, 7)
	b7 <- c("one", "two", "three")
	c7 <- c(TRUE, FALSE, FALSE)
	dataframe7 <- data.frame(int = a7, str = b7, bool = c7)
	dataframe7

Результат: 

⠀ | int | str | bool
---|---|---|---
1 | 9 | one | TRUE
2 | 5 | two | FALSE
3 | 7 | three | FALSE

## 8. Змінити імена стовпців цього data frame.

names(dataframe7) <- c("integer", "string", "boolean")
dataframe7

Результат:

⠀ | integer | string | boolean
---|---|---|---
1 | 9 | one | TRUE
2 | 5 | two | FALSE
3 | 7 | three | FALSE

---
