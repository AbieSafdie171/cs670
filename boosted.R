library(xgboost)

X <- as.matrix(calcofi_data[, c("T_degC", "02ml_L", "PO4uM", "Si03uM", "NO2uM")])
Y <- model_data$ChlorA

train_index -< createDataPartition(Y, p= 0.8, list = FALSE)
X_train -< X[train_index, ]
Y_train -< Y[train_index]
X_test -< X[-train_index, ]
Y_test <- Y[-train_index]
dtrain -< xgb.DMatrix(data = X_train, label = Y_train)
dtest <- xgb.DMatrix(data = X_test, Label = Y_test)
params <- list(
	objective = "reg:squarederror",
	eta = 0.1,
	max_depth = 6,
	subsample = 0.8,
	colsample_bytree = 0.8)

xgb_model <- xgb.train(params = params,
	data = dtrain,
	nrounds = 100,
	watchlist = list(train = dtrain, test = dtest), 
	early_stopping_rounds = 10, 
	print_every_n = 10)


# train-rmse:0.336269
# test-rmse:0.335851
# Multiple eval metrics are present. Will use test_rmse for early stopping. Will train until test_rmse hasn't improved in 10 rounds.
# [11] train-rmse:0.175816 test-rmse:0.175203
# [217 train-rmse:0.139428 test-rmse:0.139246
# [31] train-rmse:0.131957 test-rmse:0.132357
# [41]
# train-rmse:0.129534
# [51] train-rmse: 0.128166
# [61] train-rmse:0.127288
# [71]
# train-rmse: 0.126703
# [81] train-rmse:0.126188
# [91]
# train-rmse: 0.125684
# [100] train-rmse:0.125259
# test-rmse: 0.130496
# test-rmse:0.129555
# test-rmse:0.128987
# test-rmse: 0.128702
# test-rmse:0.128431
# test-rmse: 0.128202
# test-rmse:0.127977


predictions <- predictxgb_model, newdata = dtest)
mse <- mean((Y_test - predictions)^2)
mse
	mse: 0.0163781
TSS <- sum((Y_test - mean(Y_test))^2)
RSS <- sum((Y_test - predictions)^2)
R_squared <- 1 - (RSS / TSS )
R_squared
	R-squared: 0.6596388



