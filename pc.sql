DROP DATABASE IF EXISTS pc;
CREATE DATABASE pc;
USE pc;

-- Users Table for Login and Signup
CREATE TABLE Users (
    UserId INT AUTO_INCREMENT PRIMARY KEY,
    Username NVARCHAR(50) NOT NULL UNIQUE,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    PasswordHash NVARCHAR(256) NOT NULL,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP(),
    LastLogin DATETIME NULL
);

-- Generic Components Table Template - Each component type will follow this structure

-- CPU Intel Table
CREATE TABLE CPU_Intel (
    CPUId INT AUTO_INCREMENT PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Discount DECIMAL(5, 2) DEFAULT 0, -- Percentage discount
    WebLink NVARCHAR(500) NOT NULL
);

-- CPU AMD Table
CREATE TABLE CPU_AMD (
    CPUId INT AUTO_INCREMENT PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Discount DECIMAL(5, 2) DEFAULT 0, -- Percentage discount
    WebLink NVARCHAR(500) NOT NULL
);

-- GPU Nvidia Table
CREATE TABLE GPU_Nvidia (
    GPUId INT AUTO_INCREMENT PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Discount DECIMAL(5, 2) DEFAULT 0, -- Percentage discount
    WebLink NVARCHAR(500) NOT NULL
);

-- GPU AMD Table
CREATE TABLE GPU_AMD (
    GPUId INT AUTO_INCREMENT PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Discount DECIMAL(5, 2) DEFAULT 0, -- Percentage discount
    WebLink NVARCHAR(500) NOT NULL
);

-- Motherboard Intel Table
CREATE TABLE Motherboard_Intel (
    MotherboardId INT AUTO_INCREMENT PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Discount DECIMAL(5, 2) DEFAULT 0, -- Percentage discount
    WebLink NVARCHAR(500) NOT NULL
);

-- Motherboard AMD Table
CREATE TABLE Motherboard_AMD (
    MotherboardId INT AUTO_INCREMENT PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Discount DECIMAL(5, 2) DEFAULT 0, -- Percentage discount
    WebLink NVARCHAR(500) NOT NULL
);

-- RAM Table
CREATE TABLE RAM (
    RAMId INT AUTO_INCREMENT PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Discount DECIMAL(5, 2) DEFAULT 0, -- Percentage discount
    WebLink NVARCHAR(500) NOT NULL
);

-- Storage (SSD) Table
CREATE TABLE SSD (
    StorageId INT AUTO_INCREMENT PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Discount DECIMAL(5, 2) DEFAULT 0, -- Percentage discount
    WebLink NVARCHAR(500) NOT NULL
);

-- HDD Table
CREATE TABLE HDD (
    StorageId INT AUTO_INCREMENT PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Discount DECIMAL(5, 2) DEFAULT 0, -- Percentage discount
    WebLink NVARCHAR(500) NOT NULL
);

-- Power Supply Table
CREATE TABLE PowerSupplies (
    PowerSupplyId INT AUTO_INCREMENT PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Discount DECIMAL(5, 2) DEFAULT 0, -- Percentage discount
    WebLink NVARCHAR(500) NOT NULL
);

-- Case Table
CREATE TABLE Cases (
    CaseId INT AUTO_INCREMENT PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Discount DECIMAL(5, 2) DEFAULT 0, -- Percentage discount
    WebLink NVARCHAR(500) NOT NULL
);

-- Fans Table
CREATE TABLE Fans (
    FanId INT AUTO_INCREMENT PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Discount DECIMAL(5, 2) DEFAULT 0, -- Percentage discount
    WebLink NVARCHAR(500) NOT NULL
);

-- UserLikes Table
CREATE TABLE UserLikes (
    LikeId INT AUTO_INCREMENT PRIMARY KEY,
    UserId INT NOT NULL, -- References Users table
    ComponentType ENUM('CPU_Intel', 'CPU_AMD', 'GPU_Nvidia', 'GPU_AMD', 'Motherboard_Intel', 'Motherboard_AMD', 'RAM', 'SSD', 'HDD', 'PowerSupplies', 'Cases', 'Fans') NOT NULL,
    ComponentId INT NOT NULL, -- ID of the liked component
    LikedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserId) REFERENCES Users(UserId) ON DELETE CASCADE
);



SELECT * FROM GPU_Nvidia;

