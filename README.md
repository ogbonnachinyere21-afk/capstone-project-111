# capstone-project-111

CoffeeClub Database Optimization & Analytics Project

Post-Migration Data Engineering & Analytics Implementation

📌 Project Overview

This project focuses on improving the CoffeeClub database after migration. The goal was to strengthen data integrity, improve performance, clean raw data, and create analytics-ready structures that support business insights.

The work was divided into four major tasks:

Schema Optimization & Relationships

Data Cleaning & Time Transformation

Analytics Views Creation

Demographic Bucketing for Business Insights

✅ Task 1: Schema Optimization & Relationship Enforcement
🔹 1. Created a Surrogate Primary Key for Events

The events table did not originally have a unique identifier.
A new incremental ID was introduced to ensure:

Each event is uniquely identifiable

Improved query performance

Better referencing across tables

This improves database normalization and scalability.

🔹 2. Established Primary Keys Across Core Tables

Primary keys were enforced on:

Customers

Offers

Events

Offer Channels (composite key)

This ensures:

No duplicate records

Strong entity integrity

Reliable joins across tables

🔹 3. Enforced Foreign Key Relationships

Relationships were created between:

Events → Customers

Events → Offers

Offer Channels → Offers

This guarantees:

Referential integrity

No orphan records

Cascading deletes where appropriate

Cleaner relational structure

The database now behaves like a properly normalized relational system.

🔹 4. Performance Optimization with Indexing

Indexes were created on:

Customer ID (events table)

Offer ID (events table)

Offer ID (offer channels table)

This significantly improves:

Join performance

Filtering speed

Query execution time

The system is now optimized for analytics queries.

✅ Task 2: Data Cleaning & Time Transformation
🔹 1. Converted Raw Time Data into Business-Readable Features

The original dataset stored time as a numeric value.

This was transformed into:

Day (0–29)

Hour of Day (0–23)

Why this matters:

Enables time-based analytics

Allows daily and hourly behavior analysis

Makes reporting intuitive

This bridges the gap between raw data and analytical usability.

🔹 2. Data Quality Audit – Age Correction

Anomalies were found in the customer age data (e.g., unrealistic ages above 100).

Actions taken:

Corrected outliers

Enforced a constraint limiting age between 0 and 100

This ensures:

Clean demographic reporting

Reliable segmentation

Prevents future bad data entry

The system now enforces data quality at the database level.

✅ Task 3: Business Analytics Views

Two analytical views were created to support business decision-making.

📊 1. Offer Performance Summary View

This view calculates:

Number of offers received

Number of offers completed

Completion rate per offer

Business Value:

Measures marketing effectiveness

Identifies high-performing offers

Supports ROI analysis

This provides instant campaign performance insights.

📊 2. Informational Offer Impact View

This view tracks:

Informational offers

Whether they led to later customer transactions

Business Value:

Determines if non-discount offers influence purchases

Measures indirect marketing impact

Supports strategic campaign planning

This helps evaluate long-term engagement strategies.

✅ Task 4: Demographic Bucketing for Analytics

To enable segmentation analysis, customers were categorized.

🔹 1. Income Bucketing

Customers were grouped into:

Low

Medium

High

Unknown

Why this matters:

Enables revenue segmentation

Supports targeted marketing

Allows comparison of offer performance by income level

🔹 2. Age Group Classification

Customers were grouped into:

18–24

25–34

35–44

45–54

55+

Unknown

Business Value:

Enables demographic trend analysis

Helps target age-based campaigns

Improves personalization strategies

The database is now analytics-ready for segmentation studies.

🎯 Final Outcome

After completing this project, the CoffeeClub database is:

Fully relational and normalized

Enforcing strong data integrity

Protected against bad data entry

Optimized for performance

Ready for advanced analytics

Structured for business intelligence reporting

🚀 Skills Demonstrated

Database schema design

Primary & foreign key enforcement

Index optimization

Data cleaning & validation

Time transformation for analytics

Business view creation

Demographic segmentation

Performance tuning

📌 Business Impact

This transformation converts raw transactional data into:

Actionable insights

Marketing performance metrics

Customer segmentation intelligence

Executive-ready reporting structures

The system now supports both operational stability and analytical decision-making.