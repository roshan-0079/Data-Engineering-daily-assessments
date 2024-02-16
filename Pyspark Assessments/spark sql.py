from pyspark.sql import SparkSession

# Create SparkSession
spark = SparkSession.builder.appName('SparkByExamples.com') \
                    .getOrCreate()
                    
# Create DataFrame
df = spark.read \
          .option("header",True) \
          .csv("test2.csv")
df.printSchema()
df.show()

# Create SQL table
spark.read \
          .option("header",True) \
          .csv("test2.csv") \
          .createOrReplaceTempView("Experiences")
          
# Select query
df.select("Name", "age", "Salary") \
     .show(5)

spark.sql("SELECT  Name, Experience FROM Experiences") \
     .show(5)
     
# where
df.select("Name","age") \
  .where("Salary > 30000") \
  .show(5)

spark.sql(""" SELECT  Name, age FROM Experiences 
          WHERE Salary > 30000 """) \
     .show(5)
     
# sorting
df.select("Name","age") \
  .where("Salary in (10000, 20000)") \
  .orderBy("Name") \
  .show(10)

spark.sql(""" SELECT  Name, age FROM Experiences
          WHERE Salary in (10000, 20000) order by Name """) \
     .show(10)

# grouping
df.groupBy("Experience").count() \
  .show()

spark.sql(""" SELECT count(Name) as Total_Employees, Experience FROM Experiences 
          GROUP BY Experience""") \
     .show()