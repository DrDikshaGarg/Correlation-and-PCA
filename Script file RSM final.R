library("ggplot2")
install.packages("gridExtra")
library("gridExtra")
install.packages("factoextra")
library("factoextra")
install.packages(ggbiplot)
library(ggbiplot)
install.packages("corrplot")
library(corrplot)
install.packages("factoextra")
library(factoextra)
data <- read.csv("D://new//cream.csv")
data=rownames(data)<-c("a1", "a2", "a3", "a4", "a5", "a6", "a7", "a8")
pca <-prcomp(data[,c(2:15)], center = TRUE, scale = TRUE)
print(pca)

eig.val <- get_eigenvalue(pca)
eig.val

fviz_eig(pca, addlabels = TRUE, ylin =  c(0, 50))

var=get_pca_var(pca)

corrplot(var$cos2, is.corr=FALSE)

fviz_cos2(pca, choice = "var", axes = 1:2)
a<-fviz_contrib(pca, choice = "var", axes = 1)
b<-fviz_contrib(pca, choice = "var", axes = 2)
grid.arrange(a,b, ncol=2, top='Contribution of the variables to the first two PCs')

fviz_contrib(pca, choice = "ind", axes = 1:2)
fviz_pca_var(pca,
             col.var = "cos2",
             gradient.cols = c("red", "blue", "green"),
             repel = TRUE)
fviz_pca_biplot(pca, repel = TRUE,
                col.var = "blue",
                col.ind = "red")


