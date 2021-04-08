# Linear Algebra

## Vectors

<img src="Images/Vectors.PNG" width="300" />

## Matrix
> Defines a linear transformation

<img src="Images/Matrix.PNG" width="300">

#### Covariance

<img src="Images/Matrix_Covariance.PNG" width="300">

#### Linear Transformations

<img src="Images/Matrix_LinearTransformation.PNG" width="300">
<img src="Images/Matrix_LinearTransformation2.PNG" width="400">
<img src="Images/Matrix_LinearTransformation_Rotation.PNG" width="300">
<img src="Images/Matrix_LinearTransformation_Scale.PNG" width="300">

### Matrix Vector Multiplication
<img src="Images/MatrixVectorX.PNG" width="300" />
<img src="Images/MatrixVectorX2.PNG" width="300" />

### Matrix Matrix Multiplication
<img src="Images/MatrixMatrixX.PNG" width="300">

---

## Eigenvalue & Eigenvector
<img src="Images/EIG.PNG" width="300">

### Solve for Eigenvector & Eigenvalue
**EXAMPLE 1**

<img src="Images/EIG_Example.PNG" width="300">
<img src="Images/EIG_Solve.PNG" width="300">
<img src="Images/EIG_Solve_Eigenvalues.PNG" width="300">
<img src="Images/EIG_Solve_Eigenvector1.PNG" width="300">
<img src="Images/EIG_Solve_Eigenvector2.PNG" width="300">

**EXAMPLE 2**

<img src="Images/EIG_Example2.PNG" width="300">
<img src="Images/EIG_Example2_Eigenvalues.PNG" width="300">
<img src="Images/EIG_Example2_Eigenvector1.PNG" width="300">
<img src="Images/EIG_Example2_Eigenvector2.PNG" width="300">
<img src="Images/EIG_Example2_Eigenvector3.PNG" width="300">

---

## Singular Value Decomposition
<img src="Images/SVD_LinearTransformation.PNG" width="400">
<img src="Images/SVD_UEV.PNG" width="400">

- **RANK**: number of linearly independent columns of A

<img src="Images/SVD_UEV_Graphic.PNG" width="300">
<img src="Images/SVD_UEV_Graphic_U.PNG" width="300">
<img src="Images/SVD_UEV_Graphic_E.PNG" width="300">
<img src="Images/SVD_UEV_Graphic_V.PNG" width="300">

- **U**: obs-to-concept _similarity matrix_
- **E**: strength of concept
- **U**: feats-to-concept _similarity matrix_

<img src="Images/SVD_axis.PNG" width="300">

 - Every data point you can represent as a single number, which is the projection of a given data point on the "best" axis

<img src="Images/SVD_Projection.PNG" width="300">

 - Defines the Axis
 - 'Sigma' gives the variance on the **v1** axis

<img src="Images/SVD_Coord.PNG" width="300">

 - **NOTE**: Lots of variation along the 1st 2 axis

<img src="Images/SVD_DimRed.PNG" width="300">
<img src="Images/SVD_A_red.PNG" width="300">

- Dimensionality Reduction: Set smallest singular values to zero

**EXAMPLE**

<img src="Images/SVD_Example.PNG" width="300">
<img src="Images/SVD_Example_ProjectionViz.PNG" width="300">
<img src="Images/SVD_Example_Projection.PNG" width="300">
<img src="Images/SVD_Example_Projection2.PNG" width="300">
