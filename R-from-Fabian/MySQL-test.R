# command line input.
# args <- commandArgs(TRUE)
# upload_file = args[1]
# upload_file


library(RMySQL)

con <- dbConnect(MySQL(),
    user = 'root',
    password = 'vibscatapp',
    host = 'localhost',
    dbname='response')
# dbWriteTable(conn = con, name = 'Test', value = as.data.frame(Thurstone))
# dbGetQuery(conn = con, statement = "SELECT * FROM users limit 3;")

# w2=read.csv("C:\\Users\\CATAPP\\serverfiles\\CM\\1\\CM\\Data-test.csv")
	# the above line works very well.
# w2
# w2 <- w2[3:4, ]
# w2
# class(w2)
# dbGetQuery(conn = con, statement = "SELECT * FROM users limit 3;")

# dbWriteTable(conn = con, value = w2, name = "test_table", append = T) 
	# The above line works very well.

w2 = dbGetQuery(conn = con, statement = "SELECT X, dose_1000x, dose_100x, dose_10x, dose_1x FROM test_table;")
w2

dmso = dbGetQuery(conn = con, statement = "SELECT control_id, control_value FROM assay_controls WHERE phenotype = 'Cardio_peak_freq_90min';")
dmso




