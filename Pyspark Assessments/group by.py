from pyspark.sql import SparkSession
spark = SparkSession.builder.appName('Practice').getOrCreate()
df_pyspark = spark.read.csv('test.csv', header = True, inferSchema = True)
df_pyspark.show()

df_pyspark.groupby('department').sum('salary').show()
df_pyspark.groupBy("department").min("salary").show()
df_pyspark.groupBy("department").max("salary").show()
df_pyspark.groupBy("department").avg("salary").show()
df_pyspark.groupBy("department").mean("salary").show()
df_pyspark.groupBy("department").count().show()

# pivot 
df_pyspark.groupby("department").pivot("name").sum("salary").show()
#2
df_pyspark.groupby("department").agg(({"salary":"sum"})).show()

#3
# Handling Missing Values Pyspark
df_pyspark1=spark.read.csv("test2.csv",header=True,inferSchema=True)
df_pyspark1.show()

#Dropping rows based on null values
df_pyspark1.na.drop().show()
#drop() has the following parameters — how, thresh, and subset
#if all values in rows are null then drop # default any
df_pyspark1.na.drop(how="all").show()
#atleast 2 non null values should be present.
df_pyspark1.na.drop(how="any",thresh=2).show() 
#only in salary column rows get deleted
df_pyspark1.na.drop(how="any",subset=["salary"]).show()

df_pyspark1.na.fill('No Data').show() #string values will get replaced as string is given as input
df_pyspark1.na.fill(0).show() #integer values will get replaced as integer is given as input

#orderBy() and sort() in Pyspark DataFrame
df_pyspark1.sort("Salary").show()
df_pyspark1.sort(df_pyspark1["Salary"].desc()).show() # sort based on descending order
df_pyspark1.sort("Salary","Name").show() # Sort based on first column then second column
df_pyspark1.orderBy("Salary").show() # Sort based on single column and using orderby