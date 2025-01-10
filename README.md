# ecommerce_analytics
PostgreSQL project for analyzing e-commerce data

E-commerce Analytics Dashboard

Project Overview

This project showcases a PostgreSQL-based database for an e-commerce platform. It includes a well-designed schema, sample data, and advanced queries to analyze customer behavior, product popularity, and sales trends.

Features
	1.	Database Schema: Includes tables for customers, products, orders, order items, categories, and reviews.
	2.	Sample Data: Pre-populated data to simulate a functioning e-commerce platform.
	3.	Advanced Queries: Demonstrates insights like top customers, monthly revenue, and product ratings.

Files
	•	ecommerce_schema.sql: Contains the SQL script to create the database schema.
	•	ecommerce_sample_data.sql: Populates the database with sample data.
	•	ecommerce_queries.sql: Includes advanced queries for data analysis.

Setup Instructions
	1.	Install PostgreSQL on your system if not already installed.
	2.	Create a new database:

CREATE DATABASE ecommerce_db;


	3.	Import the schema:

psql -U your_username -d ecommerce_db -f ecommerce_schema.sql


	4.	Populate the database with sample data:

psql -U your_username -d ecommerce_db -f ecommerce_sample_data.sql


	5.	Run the queries from ecommerce_queries.sql to analyze the data.

Example Queries

Here are some insights you can derive using the provided queries:
	•	Top 3 customers by spending.
	•	Monthly revenue trends.
	•	Most popular product by quantity sold.
	•	Average rating for each product.
