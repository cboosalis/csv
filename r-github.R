datafilename="https://github.com/cboosalis/csv/blob/master/COMPLETE-FILE.csv"
fluency1=read.csv(datafilename,header=T)
attach(fluency1)
aov1 = aov(Fluency~Program,data=fluency1) 
summary(aov1)
print(model.tables(aov1,"means"),digits=3)
boxplot(Fluency~Program,data=fluency1)
title("Independent reading, not choral reading, promotes greater fluency gains.")

aov2 = aov(Fluency~Program*CELDT,data=fluency1) 
)summary(aov2)            #show the summary table
print(model.tables(aov2,"means"),digits=3)
boxplot(Fluency~Program*CELDT,data=fluency1)
title("Greater fluency gains depend on CELDT status and reading program.")
