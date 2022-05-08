#Reading datasets
test_subject<-read.table('~/Documents/Rcoursera/data cleaning/Getting-Cleaning/UCI HAR Dataset/test/subject_test.txt')
test_activity<-read.table('~/Documents/Rcoursera/data cleaning/Getting-Cleaning/UCI HAR Dataset/test/y_test.txt')
test_measures<-read.table('~/Documents/Rcoursera/data cleaning/Getting-Cleaning/UCI HAR Dataset/test/X_test.txt')
train_subject<-read.table('~/Documents/Rcoursera/data cleaning/Getting-Cleaning/UCI HAR Dataset/train/subject_train.txt')
train_activity<-read.table('~/Documents/Rcoursera/data cleaning/Getting-Cleaning/UCI HAR Dataset/train/y_train.txt')
train_measures<-read.table('~/Documents/Rcoursera/data cleaning/Getting-Cleaning/UCI HAR Dataset/train/X_train.txt')

#Renaming measurements
col_names<-read.table('~/Documents/Rcoursera/data cleaning/Getting-Cleaning/UCI HAR Dataset/features.txt')
colnames(test_measures)<-col_names$V2
colnames(train_measures)<-col_names$V2

#Extracts only mean and standatd deviation for each measurment
test_measures<-test_measures[,grepl('mean[^Freq]()|std()',names(test_measures))]
train_measures<-train_measures[,grepl('mean[^Freq]()|std()',names(train_measures))]

#Giving descriptive names
colnames(test_subject)<-'subject_id'
colnames(train_subject)<-'subject_id'
colnames(test_activity)<-'activity_id'
colnames(train_activity)<-'activity_id'

#Merge datasets
test_data<-cbind(test_subject,test_activity,test_measures)
train_data<-cbind(train_subject,train_activity,train_measures)
all_data<-rbind(test_data,train_data)

#Descriptive activity names
x<-factor(all_data$activity_id,labels=c('walking','walking_upstairs','walking_downstairs','sitting','standing','laying'))
x<-as.character(x)
all_data$activity_id<-x

#saving
save(all_data,file='~/Documents/Rcoursera/data cleaning/Getting-Cleaning/test&train_data.txt')

#Calculating means for each variable for each activity and each subject
means<-all_data[,!(grepl('std',names(all_data)))]
aggregate(means[,3:35],by=list(id=means$subject_id,act=means$activity_id),mean)



