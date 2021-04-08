library(readr)

# Data ----
wnba_Massey <- read_csv("Data/WNBA_Data_2017_M.csv")
wnba_Massey <- wnba_Massey[1:12,]
wnba_Diff <- read_csv("https://assets.datacamp.com/production/repositories/2654/datasets/4e20e9adfd6514bd5b1bfb1464cd6da9fbbadfe9/WNBA_Data_2017_f.csv")
wnba_Diff <- wnba_Diff[1:12,]
nfl <- read_csv("https://assets.datacamp.com/production/repositories/2654/datasets/760dae913f682ba6b2758207280138662ddedc0d/DataCampCombine.csv")

# Vectors ----
#   - Create
c(3,3,3)
rep(x = 3, times = 3)
seq(from = 2, to = 6, by = 2)
x <- seq(1,7)
y <- seq(2,14,2)
#   - Add
x+y

# Matrices ----
# - Create
matrix(1, nrow = 2, ncol = 3)
A <- matrix(c(4,0,0,1), nrow = 2, ncol = 2)
B <- matrix(c(1,2,3,2), nrow = 2, ncol = 2, byrow = TRUE)
# - Add
A + B


# Matrix Vector Equations
sum(wnba_Massey[,1])
sum(wnba_Diff)

# Eigenvectors & Eigenvalues ----

# - Matrices
A <- matrix(c(2,0.000,0,0.666), nrow = 2, byrow = TRUE)
B <- matrix(c(-1,2,4,0,7,12,0,0,-14), nrow = 3, byrow = TRUE)
C <- matrix(c(1,2,1,1), nrow = 2, byrow = TRUE)

# - Scalar Multiplication
A %*% c(1,1)
# - Show that 7 is an eigenvalue for B
B %*% c(0.2425356, 0.9701425, 0) - 7*c(0.2425356, 0.9701425, 0)
# - Show that -4 is an eigenvalue for B
B %*% c(-0.3789810, -0.6821657, 0.6253186) - (-4)*c(-0.3789810, -0.6821657, 0.6253186)
# - Show that -1 is an eigenvalue for B with eigenvector (1,0,0)
B %*% c(1, 0, 0) - (-1)*c(1, 0, 0)
# - Compute the eigenvalues of C
Eig_C <- eigen(C)
Eig_C$values
Eig_C$vectors
# - A*v = Lambda*v
C %*% Eig_C$vectors[,1] - Eig_C$values[1] * Eig_C$vectors[,1]
C %*% Eig_C$vectors[,2] - Eig_C$values[2] * Eig_C$vectors[,2]

# Principal Componenet Analysis
nfl <- read_csv("https://assets.datacamp.com/production/repositories/2654/datasets/760dae913f682ba6b2758207280138662ddedc0d/DataCampCombine.csv")

# eda
nfl %>% select_if(is.numeric) %>% 
  cor() %>% corrplot::corrplot(method = "pie", type = "lower")
cor(nfl$forty, nfl$three_cone)
cor(nfl$vertical, nfl$broad_jump)

A <- nfl[, 5:12]
A <- as.matrix(A)
# Mean Normalization
A[, 1] <- A[, 1] - mean(A[, 1])
A[, 2] <- A[, 2] - mean(A[, 2])
A[, 3] <- A[, 3] - mean(A[, 3])
A[, 4] <- A[, 4] - mean(A[, 4])
A[, 5] <- A[, 5] - mean(A[, 5])
A[, 6] <- A[, 6] - mean(A[, 6])
A[, 7] <- A[, 7] - mean(A[, 7])
A[, 8] <- A[, 8] - mean(A[, 8])
# Covariance Matrix
B <- t(A)%*%A/( nrow(A)-1 )
B[1,1]
var(A[,1])
B[1, 2]
B[2, 1]
cov(A[, 1], A[, 2])
# Eigenvalues
v <- eigen(B)
# prcomp
B <- scale(nfl[, 5:12])
summary(prcomp(B))
#   - WR
nfl_WR <- nfl %>% filter(position == "WR")
B_wr <- scale(nfl_WR[,5:12])
summary(prcomp(B_wr))

#