
model_data <- calcofi_data, ("ChlorA", "T_degC", "02ml_L", "Р04uМ", "SiOuM", "NO2uM")]

library(glmnet)
library(caret)
X <- as.matrix(model_data[, -1])
Y <- model_data$ChlorA
cv_model <- cv.glmnet(X, Y, alpha = 0, nfolds = 10)
best_lambda <- cv_model$lambda.min
best_lambda
[1] 0.01197111
ridge_model <- glmnet(X, Y, alpha = 0, lamdba = best_lambda)

predictions <- predict(ridge_model, s = best_lambda, newx = X)
MSE <- mean((Y - predictions)^2)
TSS <- sum((Y - mean(Y))^2)
RSS <- sum((Y - predictions)^2)
R_squared <- 1 - (RSS / TSS)
R_squared
[1] 0.4102769
