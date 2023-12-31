# Apache Spark SQL TPC-DS Benchmark Analysis

## Overview

This project focuses on assessing the performance and scalability of Apache Spark's SQL engine using the TPC-DS benchmark. Leveraging the efficiency of SparkSQL, a robust distributed query engine, this analysis aims to comprehensively measure the system's capabilities in managing complex decision support workloads. 

The project includes various analyses, such as measuring query execution times, assessing scalability factors, and evaluating the system's efficiency under varying data volumes and query complexities.

## Repository files and folders
- **Queries:** contains the queries generated for the Power Test.
- **Query_1-4:** contains the queries for the First Throughput Test.
- **Query_5-8:** contains the queries for the Second Throughput Test.
- **ddl:** contains the *Create_database.sql* file, used to generate the Database.
- **result:** contains the results of the TPC-DS, i.e. the times of the different tests.
- **Comparison Original vs Optimized.ipynb:** contains the a comparison between the original and the optimized queries.
- **Spark.ipynb:** contains the code for the operations to perform the TPC-DS benchmark.
- **TPC-DS-report.pdf:** project report.
- **tpcds_analysis.ipynb:** contains the code to perform the analytics.

## Key Features

- **TPC-DS Benchmark Evaluation:** Utilization of the TPC-DS benchmark for assessing the performance and scalability of Apache Spark's SQL engine.
- **SparkSQL as a Query Engine:** Leveraging SparkSQL for efficient and distributed query processing.
- **Comprehensive Performance Assessment:** Analyzing query execution times, scalability, and system efficiency with diverse data volumes and workloads.

## Installation

For the successful setup and execution of the project, ensure you have the following tools and technologies installed:

### Table 1: Tools and Technologies

| Tool                | Version | Description                                                                                           |
|---------------------|---------|-------------------------------------------------------------------------------------------------------|
| TPC-DS tools        | 3.2.0   | Official .zip file by TPC containing the data and query generation tools.                             |
| Apache Spark        | 3.5     | Unified engine for large-scale data analytics with Spark SQL as a built-in library.                   |
| Hadoop              | 2.8     | Collection of open-source utilities, necessary for certain functionalities.                           |
| Python              | 3.11    | High-level, general-purpose programming language used to execute scripts.                             |
| Visual Studio Code  | 1.83.1  | IDE used to generate data and queries via 'dsdgen' and 'dsqgen'.                                      |
| Jupyter Notebook    | 7.0.6   | Environment utilized for producing Python notebooks.                                                  |
| GitHub Desktop      | -       | Used to share code files and images conveniently among team members via GitHub.                        
| Desktop PC          | -       | The analysis was performed on a desktop equipped with: 1) Processor: Intel(R) Core(TM) i5-2400 GPU 3.10GHz; 2) RAM: 8045MB; 3) Operating System: Debian GNU/Linux 12. |

To install these tools and technologies, follow the instructions provided by the respective tool's official documentation or download from the specified versions to ensure compatibility and successful execution of the benchmark analysis.

Note: Be careful with Spark installation in terms of Java version and Scala version and environment variables setting. The documentation and steps to follow can be found at https://spark.apache.org/docs/latest/.

## Usage

1. Download the TPC-DS folder from the official webpage and follow the next steps to create the binaries. If your platform is different, please follow the guide inside the toolkit.

```
unzip <downloaded-tpc-ds-zipfile>
cd <tpc-ds-folder>/tools
make clean
make OS=LINUX
make
```

Note: If Makefile does not work, you can add "LINUX_CFLAGS	= -g -Wall -fcommon" in make file into tools folder.


2. Install Spark: Download the zip file about spark + Hadoop version and follow the next steps:

Unzip the file.zip downloaded from the Spark site.

```
tar -xzvf spark-3.x.x-bin-hadoop2.7.tgz
```

Configure environment variables:

```
export SPARK_HOME=/<folder>/spark
export JAVA_HOME=/<folder>/java11
export PATH=$SPARK_HOME/bin:$PATH
```

If you do not know what are the folders, you can write in the terminal:

```
which spark-shell
```
And then, configure properly the environment variables.

3. Install Python to work over Spark from Python through the Pyspark library.
4. Download this GitHub to have the same queries and files
5. Generate the different scales of data, the data must be in the data folder separated by folder according to the SCALE, for example: SCALE 1 in folder Data1. You can generate them in the terminal or visual studio code over the toolkit folder with the next command:

```
./dsdgen -DIR ../data<SC>  -SCALE <SC>
```
6. Follow the steps in Spark.ipynb.
7. The results for loading and query execution are saved in the result folder.
8. To run optimization queries and make a comparison, make appropiate modifications in Spark.ipynb and create files with results for optimization and original queries, and compare them through Comparison Original vs Optimized.ipynb file. (change the folder to read new queries and add suffixes on the result)

Note: If you want, you can run new queries from the toolkit. Follow the guide user. 

## Author

### Contributors

- **[Cools Arnaud](https://github.com/Arcools-ulb)**
- **[Dubois Alexandre](https://github.com/aedubois)**
- **[Rocca Valerio](https://github.com/ValerioRocca)**
- **[Salazar Maria Camila](https://github.com/mariacsalazar)**
