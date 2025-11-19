-- 1. Creates the table structure for Health Program Risk Metrics
-- Using DECIMAL for pass rates ensures precision
CREATE TABLE Health_Risk_Data (
    Program_Name VARCHAR(50) NOT NULL,
    Cohort_Year INT NOT NULL,
    Delivery_Mode VARCHAR(50),
    Capacity INT,
    Enrollment INT,
    First_Time_Pass_Rate DECIMAL(5, 4),
    Accreditor_Benchmark DECIMAL(5, 4),
    Retention_Status VARCHAR(20),
    Pell_Status VARCHAR(5)
);

-- 2. Inserts the simulated compliance and efficiency data
INSERT INTO Health_Risk_Data (Program_Name, Cohort_Year, Delivery_Mode, Capacity, Enrollment, First_Time_Pass_Rate, Accreditor_Benchmark, Retention_Status, Pell_Status) VALUES
('Nursing', 2024, 'InPerson_Day', 40, 38, 0.89, 0.85, 'Graduated', 'No'),
('Nursing', 2024, 'InPerson_Evening', 25, 20, 0.89, 0.85, 'Graduated', 'Yes'),
('Nursing', 2023, 'InPerson_Day', 40, 35, 0.84, 0.85, 'Dropped', 'No'),
('Paramedic', 2024, 'Hybrid', 30, 28, 0.95, 0.90, 'Graduated', 'No'),
('Paramedic', 2023, 'Hybrid', 30, 25, 0.92, 0.90, 'Graduated', 'Yes'),
('FireScience', 2024, 'Online', 50, 48, 1.00, 0.98, 'Graduated', 'No'),
('FireScience', 2023, 'Online', 50, 40, 0.97, 0.98, 'Dropped', 'Yes'),
('DentalHygiene', 2024, 'InPerson_Day', 20, 19, 0.96, 0.95, 'Graduated', 'No'),
('DentalHygiene', 2024, 'InPerson_Day', 20, 18, 0.96, 0.95, 'Dropped', 'Yes'),
('Radiography', 2023, 'InPerson_Day', 35, 30, 0.91, 0.90, 'Graduated', 'No'),
('Radiography', 2023, 'InPerson_Day', 35, 32, 0.91, 0.90, 'Graduated', 'Yes'),
('Radiography', 2024, 'InPerson_Day', 35, 34, 0.87, 0.90, 'Dropped', 'No');