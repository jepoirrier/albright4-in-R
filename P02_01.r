# P02_01: p. 33, ch. 2, problem 1
data2008 <- read.table("P02_01_data2008.csv", header = TRUE, sep=",")
head(data2008)
summary(data2008)
data2009 <- read.table("P02_01_data2009.csv", header = TRUE, sep=",")
head(data2009)
summary(data2009)

# answer to question a:
summary(data2008$Gender)
summary(data2009$Gender)
# -> increase in woman (+16) and decrease in men (-17)
counts2008 <- table(data2008$Gender)
barplot(counts2008, main="Gender distribution in 2008", xlab="Gender", ylab="Count", names.arc = c("M", "F"))
counts2009 <- table(data2009$Gender)
barplot(counts2009, main="Gender distribution in 2008", xlab="Gender", ylab="Count", names.arc = c("M", "F"))

# answer to question b:
counts2008 <- table(data2008$Nationality)
barplot(counts2008, main="Nationality distribution in 2008", xlab="Nationality", ylab="Count")
# countries to be recoded because < 3: Austria, Brazil, Canada, Croatia, Dominican Republic, Ecuador, Italy, Kazakhstan, Mexico, Nigeria, Pakistan, Peru, Thailand
levels(data2008$Nationality)[levels(data2008$Nationality) == "Austria"] <- "Other"
levels(data2008$Nationality)[levels(data2008$Nationality) == "Brazil"] <- "Other"
levels(data2008$Nationality)[levels(data2008$Nationality) == "Canada"] <- "Other"
levels(data2008$Nationality)[levels(data2008$Nationality) == "Croatia"] <- "Other"
levels(data2008$Nationality)[levels(data2008$Nationality) == "Dominican Republic"] <- "Other"
levels(data2008$Nationality)[levels(data2008$Nationality) == "Ecuador"] <- "Other"
levels(data2008$Nationality)[levels(data2008$Nationality) == "Italy"] <- "Other"
levels(data2008$Nationality)[levels(data2008$Nationality) == "Kazakhstan"] <- "Other"
levels(data2008$Nationality)[levels(data2008$Nationality) == "Mexico"] <- "Other"
levels(data2008$Nationality)[levels(data2008$Nationality) == "Nigeria"] <- "Other"
levels(data2008$Nationality)[levels(data2008$Nationality) == "Pakistan"] <- "Other"
levels(data2008$Nationality)[levels(data2008$Nationality) == "Peru"] <- "Other"
levels(data2008$Nationality)[levels(data2008$Nationality) == "Thailand"] <- "Other"
counts2008 <- table(data2008$Nationality)
barplot(counts2008, main="Nationality distribution in 2008", xlab="Nationality", ylab="Count")
counts2009 <- table(data2009$Nationality)
# countries to be recoded because < 3: Barbados, Columbia, Mexico, Peru, Philippines, Puerto Rico, Thailand
levels(data2009$Nationality)[levels(data2009$Nationality) == "Barbados"] <- "Other"
levels(data2009$Nationality)[levels(data2009$Nationality) == "Colombia"] <- "Other"
levels(data2009$Nationality)[levels(data2009$Nationality) == "Mexico"] <- "Other"
levels(data2009$Nationality)[levels(data2009$Nationality) == "Peru"] <- "Other"
levels(data2009$Nationality)[levels(data2009$Nationality) == "Philippines"] <- "Other"
levels(data2009$Nationality)[levels(data2009$Nationality) == "Puerto Rico"] <- "Other"
levels(data2009$Nationality)[levels(data2009$Nationality) == "Thailand"] <- "Other"
counts2009 <- table(data2009$Nationality)
barplot(counts2009, main="Nationality distribution in 2009", xlab="Nationality", ylab="Count")
