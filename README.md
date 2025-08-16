# Introduction
🏨 Step into the world of hotel revenue analytics. In this project, I explored booking and revenue patterns from a hotel dataset — analyzing guest demographics, seasonal peaks, cancellations, and pricing behavior. Using SQL (PostgreSQL) as the main tool, I extracted insights into when hotels are most busy, which markets generate the highest spend, and what drives booking trends.

🔍 SQL queries: [sql_files](/sql_files/)

# Background
Motivated by the desire to understand hotel performance and guest behavior, this project explores revenue and booking dynamics through a structured, data-driven approach. Using SQL queries in PostgreSQL, I analyzed hotel data to uncover seasonal patterns, customer preferences, and the financial implications of cancellations and special requests.

This project is not only about querying raw data but also about transforming it into meaningful insights that tell a story — how guests behave across different markets, which months drive higher demand, and what factors influence hotel pricing and operations. By combining careful query design with logical data exploration, I aimed to highlight the key drivers behind hotel revenue performance.

### 💡 The questions I wanted to answer through my SQL queries were:

1. Do repeat guests prefer City Hotels or Resort Hotels?
2. Which month had the most guests?
3. Which countries spend the most on average (ADR)?
4. Who are the top 5 booking agents by number of reservations?
5. What is the most expensive month on average?
6. How many bookings are eventually canceled?
7. When are special requests most common?
8. Which reserved vs. assigned room type combinations are most frequent?
9. What is the average waiting time for guests from the top 3 countries?
10. Is there a relationship between length of stay and ADR (are longer stays more expensive)?

# Tools I Used

To carry out this end-to-end analysis of hotel revenue and booking behavior, I relied on the following tools:

- **SQL:** The core language used to query, aggregate, and manipulate hotel data, enabling me to extract meaningful insights from complex datasets.
- **PostgreSQL:** My database management system of choice — efficient and reliable for handling structured booking and revenue data.
- **Visual Studio Code:** My primary environment for writing and organizing SQL scripts, ensuring a clean and efficient workflow.
- **Git & GitHub:** Essential tools for version control, backup, and sharing my SQL queries and project files with others.

# The Analysis
Each SQL query in this project was designed to uncover a different aspect of hotel revenue and guest behavior. The goal was to understand not only when hotels experience the highest demand, but also who their customers are, how much they spend, and what factors influence booking outcomes. Here are the key findings I discovered:

### 1. Do repeat guests prefer City Hotels or Resort Hotels?
- City Hotels attract the majority of repeat guests, with 507 repeat bookings compared to only 134 for Resort Hotels.

- This suggests that repeat loyalty is much stronger for City Hotels, potentially due to business travel or more frequent stays in urban locations.

- Resort Hotels see fewer repeat guests, which may indicate they are more often chosen for one-time vacations rather than recurring visits.


### 2. Which month had the most guests?
- September is the peak month with 9,726 guests, followed closely by October (9,084) and August (8,031).

- Summer to early autumn (July–October) clearly represents the high season for guest arrivals.

- November and December see a noticeable drop, indicating low season after autumn peaks.

### 3. Which countries spend the most on average (ADR)?
- The highest ADR comes from guests in Indonesia (IDN) – 150.7, followed by Myanmar (MMR) – 145.0 and Iran (IRN) – 142.7.

- Several Asian markets (Indonesia, Myanmar, Philippines, Kazakhstan, Iran) are among the top-paying segments.

- These insights highlight potential for targeted marketing in high-ADR countries.

### 4. Who are the top 5 booking agents by number of reservations?
- Agent 1 dominates with 4,204 bookings, nearly double the next competitor.

- Agents 240 (2,609) and 9 (2,317) are the next strongest contributors.

- The top 3 agents together account for the vast majority of reservations, showing heavy reliance on a few partners.

### 5. What is the most expensive month on average?
- August is the most expensive month, with an average daily rate (ADR) of ~105.9.

- This aligns with peak summer demand, when both leisure and holiday travel are at their highest.

### 6. How many bookings are eventually canceled?
- The cancellation rate is 37.02%, meaning more than 1 in 3 bookings never convert to actual stays.

- This is a high risk factor for revenue forecasting, as a large share of expected income is lost.

### 7. When are special requests most common?
- August has the highest number of special requests (2,188 total).

- This aligns with August also being the most expensive month (highest ADR) and a peak demand period.

### 8. Which reserved vs. assigned room type combinations are most frequent?
- The most frequent match is when guests reserve type A and are assigned type A (14,390 times) → strong consistency.

- However, there are many upgrades/downgrades, e.g. A reserved → D assigned (2,107) and A reserved → E assigned (363).

- Room type D is also often consistent (1,899 reservations matched), showing it as another stable allocation.

### 9. What is the average waiting time for guests from the top 3 countries?
- Guests from Portugal (PRT) experience the longest average waiting time at ~2.7 days.

- Guests from Spain (ESP) also face some delay (~1.7 days).

- Guests from the UK (GBR) have essentially zero waiting time, suggesting priority allocation or higher availability for this market.

### 10. Is there a relationship between length of stay and ADR (are longer stays more expensive)?
- The highest ADR occurs for 18-night stays (~157.0), suggesting that certain long-duration bookings can be priced at a premium.

- Short-to-medium stays around 5–6 nights also show high ADR (~110–112).

- Stays longer than a month (e.g., 27 nights – 93.0, 33 nights – 98.3, 60 nights – 110.5) generally trend lower ADRs, with some exceptions.

# What I Learned

This project significantly deepened my understanding of both SQL and real-world data analysis. Here are the key takeaways:

- SQL Mastery in Practice: I strengthened my skills in query design using CTEs, JOINs, aggregation, filtering, and window functions — all in the context of hotel booking and revenue data.

- Data Structuring & Categorization: I learned how to segment data effectively — by month, hotel type, country, booking agent, and room type — to uncover multidimensional trends.

- Analytical Thinking: I realized how structured questioning (one query = one insight) can transform raw booking data into a powerful narrative about hotel performance and customer behavior.

- Business-Relevant Insights: This project highlighted how cancellations, repeat guests, special requests, and market segmentation directly impact hotel operations and revenue.

# Conclusion

This project showcased how SQL can be used not just for querying data, but for uncovering meaningful business insights. By analyzing hotel revenue and booking patterns, I was able to identify seasonal demand peaks, market segments with the highest spending, and risks such as high cancellation rates.

The analysis demonstrated that even a single dataset can reveal a wide range of perspectives — from guest loyalty behavior to pricing dynamics and operational challenges like room assignment mismatches. These insights could help hotel managers optimize pricing strategies, strengthen partnerships with booking agents, and improve customer satisfaction.

Ultimately, this project reinforced the value of structured data analysis: asking the right questions, writing precise queries, and translating raw numbers into actionable knowledge.