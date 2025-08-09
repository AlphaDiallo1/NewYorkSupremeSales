# New York Supreme Sales (NYSS) Analytics

A comprehensive sales analytics database system for New York Supreme Sales, a Staten Island-based sporting goods retailer specializing in basketball, running, and training equipment.

## Project Overview

This project contains a complete relational database schema and analytics queries for tracking sales performance, customer behavior, inventory management, and community engagement across multiple Staten Island store locations.

### Business Context
- **3 Store Locations**: St. George, New Dorp, and Great Kills
- **Product Focus**: Basketball equipment, running gear, training accessories
- **Community Engagement**: Local tournaments and training clinics
- **Customer Loyalty**: Multi-tier membership program (Bronze/Silver/Gold/Platinum)

## Project Structure

```
new-york-supreme-analystics/
├── data/                          # Sample CSV data files
│   ├── customers.csv             # Customer demographics & loyalty info
│   ├── stores.csv                # Store location details
│   ├── products.csv              # Product catalog with pricing
│   ├── orders.csv                # Transaction records
│   ├── order_items.csv           # Line-item details
│   ├── memberships.csv           # Customer membership plans
│   ├── events.csv                # Community events & tournaments
│   ├── event_registerion.csv     # Event registration data
│   └── snapshot.csv              # Inventory snapshots
├── sql_scripts/
│   ├── 00_create_tables.sql      # Database schema definition
│   ├── 01_load_sample_data.sql   # Data loading scripts
│   └── 02_analysis_queries.sq    # Business analytics queries
└── README.md
```

## Key Features

### 📈 Analytics Capabilities
- **Revenue Tracking**: Monthly revenue analysis by store location
- **Product Performance**: Top-selling products by category (90-day rolling)
- **Customer Segmentation**: RFM-lite analysis for loyalty tier optimization
- **Inventory Management**: Stock level monitoring across locations
- **Event Analytics**: Community engagement and registration tracking

###  Database Schema
The system includes 8 interconnected tables:
- **Stores**: Location and operational data
- **Customers**: Demographics and loyalty information
- **Products**: Catalog with cost/pricing details
- **Orders & Order Items**: Transaction and line-item records
- **Memberships**: Customer subscription plans
- **Events & Registrations**: Community engagement tracking
- **Inventory Snapshots**: Stock level monitoring

## Getting Started

### Prerequisites
- PostgreSQL or compatible SQL database
- CSV import capabilities

### Setup Instructions

1. **Create the database schema**:
   ```sql
   -- Run the table creation script
   \i sql_scripts/00_create_tables.sql
   ```

2. **Load sample data**:
   ```sql
   -- Load initial data
   \i sql_scripts/01_load_sample_data.sql
   ```

3. **Run analytics queries**:
   ```sql
   -- Execute business intelligence queries
   \i sql_scripts/02_analysis_queries.sq
   ```

##  Sample Analytics

### 1. Monthly Revenue by Store
Track revenue performance across all Staten Island locations with month-over-month comparisons.

### 2. Top Products by Category (90-day)
Identify best-selling basketball, running, and training products to optimize inventory and marketing.

### 3. RFM Customer Segmentation
Analyze customer behavior using:
- **Recency**: How recently they purchased
- **Frequency**: How often they shop
- **Monetary**: Average order value

## Business Use Cases

- **Store Performance**: Compare revenue across St. George, New Dorp, and Great Kills locations
- **Inventory Optimization**: Track product demand patterns for better stock management
- **Customer Retention**: Identify high-value customers for targeted marketing
- **Community Engagement**: Measure success of local basketball tournaments and clinics
- **Loyalty Program**: Optimize Bronze/Silver/Gold/Platinum tier benefits






